# Amethyst theme configuration

```yaml
# Site settings
#
# Docs: https://jekyllrb.com/docs/configuration/
title: Amethyst Demo
description: "An amazing website."
url: https://example.github.io
# For pages (not blog posts) this is equivalant to /:title/
permalink: /:year/:month/:day/:title/
lang: en
timezone: UTC

# Theme settings
#
# Amethyst theme options are documented at:
# https://github.com/qunitjs/jekyll-theme-amethyst/blob/main/docs/config.md
#
theme: jekyll-theme-amethyst
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
  # Example: https://github.com/qunitjs/qunitjs.com/blob/main/
  edituri_base:
  # Base URI for version links (e.g. "version added") on page-api layouts.
  #
  # Example: https://github.com/qunitjs/qunit/releases/tag/
  release_base:
  # Mastodon account URL (e.g. "https://example.org/@qunitjs")
  mastodon:
  # Twitter.com username (without "@")
  twitter:
  # GitHub.com organisation or username (without "@")
  github:
  # Gitter.im room (e.g. "qunitjs/qunit")
  gitter:
  # Search powered by Typesense
  #
  # https://github.com/qunitjs/jekyll-theme-amethyst/blob/main/docs/getting-started.md#enable-typesense
  typesense:
    origin:
    collection:
    search_only_api_key:


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
