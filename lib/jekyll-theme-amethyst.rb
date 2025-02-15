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
require "digest"
require "set"

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
