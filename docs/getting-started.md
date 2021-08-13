# Getting started with Amethyst

If you want to see what a minimal repo structure looks like,
browse the [example](https://github.com/qunitjs/jekyll-theme-amethyst/tree/example) branch.

For the end-result, see [Amethyst Demo](https://qunitjs.github.io/jekyll-theme-amethyst/), or the [QUnit website](https://qunitjs.com/).

## Create a repository

1. If you haven't already, create a new repository.
   ```
   $ mkdir my-site
   $ cd my-site/
   my-site$ git init
   ```

2. Copy the Example site, like so:
   ```
   my-site$ git fetch https://github.com/qunitjs/jekyll-theme-amethyst.git example
   my-site$ git checkout FETCH_HEAD .
   ```

3. That's it!

   You can now run `bundle install && bundle exec jekyll serve`
   to preview the site locally at <http://localhost:4000/>.
   See [Contributing](../README.md#contributing) for troubleshooting.

## Make it yours

Some ideas for what to do next:

* Edit the [Home](https://github.com/qunitjs/jekyll-theme-amethyst/blob/example/index.md) page, and create other Markdown files.
* Change the [_config](https://github.com/qunitjs/jekyll-theme-amethyst/blob/example/_config.yml) file, e.g. to set the name and tagline of your site. See also [Amethyst theme configuration](./config.md) documentation.
* Change colors in [amethyst-variables.scss](https://github.com/qunitjs/jekyll-theme-amethyst/blob/example/_sass/amethyst-variables.scss).
* Change the top navigation links via [sitenav.yml](https://github.com/qunitjs/jekyll-theme-amethyst/blob/example/_data/sitenav.yml).
* Add a LICENSE to your repository.
* [Manage a custom domain with GitHub Pages](https://docs.github.com/en/free-pro-team@latest/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site)

## Enable Algolia search

1. Log into [Aloglia](https://www.algolia.com/). (There is a shared `infrastructure-team@jquery.com` account that jQuery projects and other OpenJS Foundation projects may use.)
2. Create or browse an application, and go to its "API Keys".
3. Set the following in your site's `_config.yml` file:
   - `algolia.application_id`: Application ID.
   - `amethyst.algolia.search_only_api_key`: Search-Only API Key.
   - `algolia.index_name`: make up a unique lowercase name for the current static site.
4. Set the following secure environment variable in a CI build for commits pushed to the main branch.
   E.g. via GitHub Actions. ([Example workflow YAML](https://github.com/qunitjs/jekyll-theme-amethyst/blob/main/.github/workflows/doc-search.yaml))
   - `ALGOLIA_API_KEY`: Admin API Key.
5. Done! The settings in `_config.yml` instruct the theme to display a search field. The next CI build will populate the search index with your content.

Terminology:

* **application**:
   A group of one or more search indexes with an associated "team" of users that can administer those indexes. The application is generally named after a top-level project (e.g. "QUnit") with one or more indexes for its sites (e.g. qunitjs.com and api.qunitjs.com).

   We currently use a shared login (ask Linux Foundation IT for access), but individuals could be granted partial access as well.

   Applications need to be created from the Algolia control panel. The Application IDs are considered public information, and look like `EQYECMT6Q0`.

* **index**:
  The actual crawled content. These do not need to be created ahead of time. In the CI build for
  a static site one simply specifies what index to use, and it will automatically get created
  during the next build.

  Whenever a build happens for a site, it replaces all content in that index, so if a single
  build is not aware of all content on a given domain, then you need to use separate index names
  for each part of the site as it is built. Usually, though, assuming one static site on one domain
  name, there would be one index for the whole site.

  As example, qunitjs.com content is indexed under `qunitjs`, and api.qunitjs.com content under `api-qunitjs`.
