# Amethyst theme configuration

```yaml
# Site settings
#
# Docs: https://jekyllrb.com/docs/configuration/
title: Amethyst Demo
description: "An amazing website."
# For pages (not blog posts) this is equivalant to /:title/
permalink: /:year/:month/:day/:title/
lang: en
timezone: UTC

# Theme settings
#
# Amethyst theme options are documented at:
# https://github.com/qunitjs/jekyll-theme-amethyst/blob/main/docs/config.md
#
amethyst:
  # Default: "/favicon.svg"
  favicon:
  # Default: "/"
  home_href:
  # Horizontal logo with text (SVG, or PNG that is at least 140px tall, for 70px@2x).
  # Set width/height for aspect ratio.
  #
  # Example:
  #
  # ```
  # header_logo:
  #   src: /assets/logo-with-text.svg
  #   width: 250
  #   height: 70
  # ```
  header_logo:
  # Base URI for "Edit this page" link in the footer.
  # When set, this is combined with the relative path to the Markdown file in the repo.
  #
  # Example: https://github.com/qunitjs/jekyll-theme-amethyst/blob/example/
  edituri_base:
  # Base URI for version links (e.g. "version added") on page-api layouts.
  #
  # Example: https://github.com/qunitjs/qunit/releases/tag/
  release_base:
  # Mastodon account URL (e.g. "https://mastodon.technology/@qunitjs")
  mastodon:
  # Twitter.com username (without "@")
  twitter:
  # GitHub.com organisation or username (without "@")
  github:
  # Gitter.im room (e.g. "qunitjs/qunit")
  gitter:
  # Frontend search powered by Algolia
  algolia:
    # Key for client-side search queries (32-character hex token)
    search_only_api_key:

    # Defaults to `algolia.application_id` (see below)
    application_id:

    # Which indexes to use as autocomplete source
    #
    # Defaults to a single source based on `algolia.index_name`,
    # which means the current site only.
    #
    # If there are multiple relates sites that you want to give
    # a unified search experience (e.g. qunitjs.com and api.qunitjs.com)
    # then use this option to explicitly specify the sources.
    # In that case, be sure to set `base` for the "other" sites
    # as the indexes not aware of their full url (indexing happens
    # at built time in CI). Include the "current" site index name as
    # well, but without any `base` so that its results are linked
    # relative, and thus work as expected when testing the site
    # locally, for example.
    #
    # Example: Multiple sources
    #
    # ```
    # sources:
    #  - index: qunitjs-api
    #    base: https://api.qunitjs.com
    #  - index: qunitjs
    # ```
    sources:


# Backend search settings
#
# This applies to the 'jekyll algolia' command, which is typically
# run from an after a commit is merged. The settings are documented at:
# https://github.com/algolia/jekyll-algolia
#
# To learn how to set this up, refer to:
# https://github.com/qunitjs/jekyll-theme-amethyst/blob/main/docs/getting-started.md#enable-algolia-search
#
algolia:
  application_id:
  # Which index_name the 'jekyll algolia' command will create or update.
  index_name:
  # By default only HTML paragraphs are indexed (and headings, albeit through a different mechanism).
  # * Include list items (similar to paragraphs).
  # * Include tables (index per row for better excerpts).
  # * Include <pre> (typically code examples, omit if it "poisons" results too much).
  nodes_to_index: 'p,li,tr,pre'
  # Pages not to suggest in search, e.g. if they are overviews
  # that only point to other pages and have no original content.
  files_to_exclude:
    # - something-overview.md


# Blog archives
#
# Docs: https://github.com/jekyll/jekyll-archives/
jekyll-archives:
  enabled:
    - year
  layout: posts-year
  permalinks:
    year: "/:year/"

```
