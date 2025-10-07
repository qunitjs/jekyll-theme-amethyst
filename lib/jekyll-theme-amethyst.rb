require "digest"
require "set"

# The "file_version_query" Liquid filter appends a query parameter with a file hash.
#
# Example: Basic
#
#     ```
#     <img src="{{ "/assets/foo.png" | file_version_query | relative_url }}">
#     ```
#     ```
#     <img src="/assets/foo.png?v=01234567">
#     ```
#
# Example: Link to a generated file that may not yet exist, and hash its input files instead.
#
#     ```
#     <link href="{{ "/assets/style.css" | file_version_query: "/_sass/x.scss", "/_sass/y.scss" }}">
#     <link href="/assets/style.css?v=01234567">
#     ```
#
# The "reject_include" Liquid filter applies to an iterable collection of items
# that may have a given `property` with an array as value. It removes items
# where `property` contains one or more values from `values`.
#
# This is similar to the built-in "where" filter, except negated, and for array
# properties rather than string properties.
#
# Example: Exclude posts where "tags" contains an excluded tag
#
#     ```
#     tags_excluded = [ "foo", "bar" ]
#     posts = [
#  	  	{ id: 1 }, // property may not exist
#  	  	{ id: 2, tags: [ "quux" ] }, // property does not include "foo" or "bar"
#  	  	{ id: 2, tags: [ "quux", "bar" ] // rejected
#  	  }
#     filtered = posts | reject_include: "tags", tags_excluded
#
#     filtered === [
#  	  	{ id: 1 },
#  	  	{ id: 2, tags: [ "quux" ] }
#  	  }
#     ```
module Jekyll
	module AmethystFilters
		def file_version_query(input, *filenames)
			filenames = [input] unless filenames.length > 0
			hexes = filenames.map do |filename|
				begin
					digest = Digest::MD5.file File.join(@context.registers[:site].source, filename)
				rescue StandardError => e
					digest = Digest::MD5.file File.join(__dir__, "..", filename)
				end
				digest.hexdigest
			end
			hex = hexes.length > 1 ? Digest::MD5.hexdigest(hexes.join(" ")) : hexes[0]
			"#{input}?v=#{hex[0..7]}"
		end
		def reject_include(input, property, values)
			ary = Liquid::StandardFilters::InputIterator.new(input)
			ary.reject do |item|
				values.intersect? item[property]
			end
		end
	end
end

Liquid::Template.register_filter(Jekyll::AmethystFilters)

module Jekyll
	module AmethystPlugin
		class AuthorPageWithoutAFile < Jekyll::PageWithoutAFile
			def template
				# The permalink template, e.g. customize to "/blog/author/:author/"
				# on sites with both API docs and a blog.
				author_permalink = site.config["amethyst"]["author_permalink"] || "/author/:author"
				Utils.add_permalink_suffix(author_permalink, site.permalink_style)
			end

			def url_placeholders
				super.merge({
					"author" => data["author"]
				})
			end
		end

		class AuthorPageGenerator < Jekyll::Generator
			safe true

			def generate(site)
				site.data["authors"]&.each do |slug, name|
					site.pages << AuthorPageWithoutAFile.new(site, site.source, 'author', "#{slug}.html").tap do |page|
						page.data.merge!(
							"layout" => "posts-author",
							"title" => name,
							"author" => slug
						)
					end
				end
			end
		end

		class YearDataGenerator < Jekyll::Generator
			safe true

			def generate(site)
				s = Set.new()
				site.posts&.docs&.each { |post| s.add(post.date.strftime('%Y')) }
				site.data["amethyst_post_years"] = s.to_a.sort!.reverse!
			end
		end
	end
end
