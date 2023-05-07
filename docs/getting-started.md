# Getting started with Amethyst

For a minimal and clean starting point, copy the [example](https://github.com/qunitjs/jekyll-theme-amethyst/tree/example) branch.

For the end-result, see [Amethyst Demo](https://qunitjs.github.io/jekyll-theme-amethyst/), or the [QUnit website](https://qunitjs.com/).

## Create a repository

1. If you haven't already, create a new repository.
   ```
   $ mkdir my-site
   $ cd my-site/
   my-site$ git init
   ```

2. Copy the Example files, like so:
   ```
   my-site$ git fetch https://github.com/qunitjs/jekyll-theme-amethyst.git example && git checkout FETCH_HEAD .
   ```

That's it!

You can now run `bundle install && bundle exec jekyll serve` and view the site locally at <http://localhost:4000/>.
See [README.md](../README.md#contributing) for more details.

## Make it yours

### Configuration

Edit the [_config.yml](https://github.com/qunitjs/jekyll-theme-amethyst/blob/example/_config.yml) file:

* Set `title` to the title of your website.
* Set `url` to the address of your website.
  For a sub-project without an own a domain name (e.g. GitHub Pages for a non-org site), also set `baseurl: /my-repo`.

Read more about [Amethyst theme configuration](./config.md#readme).

### Colors

Change the theme colors in [_sass/amethyst-variables.scss](https://github.com/qunitjs/jekyll-theme-amethyst/blob/example/_sass/amethyst-variables.scss#L1).

### Site navigation

Change the top navigation links, or create sub menus, via [sitenav.yml](https://github.com/qunitjs/jekyll-theme-amethyst/blob/example/_data/sitenav.yml).

### Custom domain

See [Manage a custom domain with GitHub Pages](https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site).

### Enable Typesense

Optional autocompletion with search suggestions.

1. Follow [Create scraper](https://github.com/jquery/infrastructure-puppet/blob/staging/doc/search.md). Feel free to ask the jQuery Infrastructure Team for help.
2. Set the following in your `_config.yml` file:
   - `amethyst.typesense.origin`: <https://typesense.jquery.com>
   - `amethyst.typesense.collection`: Unique lowercase name for the current site (e.g. example_com or example_foo).
     This should match the index name used by your scraper.
   - `amethyst.typesense.search_only_api_key`: Search-only key (copy from another repo, or consult the jQuery Infrastucture credentials vault.)

Done! The presence of these settings will automatically enable autocompletion on the search field.
