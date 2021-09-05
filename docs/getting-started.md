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

### Enable Algolia search

1. Create or browse your application in [Algolia](https://www.algolia.com/). (There is a shared "team" for OpenJS Foundation projects. Ask [OpenJS Operations](https://openjsf.org/about/contact/) for your application to be added to the account.)
2. Go to "API Keys", and take note of the "Search-Only API Key" and "Admin API Key".
3. Set the following in your `_config.yml` file:
   - `algolia.application_id`: Application ID.
   - `amethyst.algolia.search_only_api_key`: Search-Only API Key.
   - `algolia.index_name`: Unique lowercase name for the current site (e.g. example-com or example-com-foo).
     This index will be automatically created by GitHub Actions after the next commit.
4. Create a repository secret on GitHub, named `ALGOLIA_API_KEY`, with the "Admin API Key".

   This is used by the [doc-search](https://github.com/qunitjs/jekyll-theme-amethyst/blob/main/.github/workflows/doc-search.yaml) workflow, which updates the search index after each commit.

Done! The presence of these settings will automatically enable display of the search field.

Terminology:

* **application**:
  A group of one or more search indexes with an associated "team" of users that can administer those indexes. The application is generally named after a top-level project (e.g. "QUnit") with one or more indexes for its sites (e.g. qunitjs-com and qunitjs-com-api).

  Applications need to be created from the Algolia control panel. The Application IDs are considered public information, and look like `ABCDEF0124`.

* **index**:
  An index holds the crawled content. These do not need to be created ahead of time. The CI builds will create these as-needed.

  As example, qunitjs.com content may be un a `qunit-com` index, and api.qunitjs.com content under `api-qunitjs-com`. Whenever a site is deployed, the index is replaced with the new content. This is why different subdomains or subprojects that have their own repository should have their own index as otherwise content of the "other" sites would be lost.

  Search suggestions may come from multiple indexes at once. See [Amethyst config](./config.md#readme) for how.
