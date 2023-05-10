[![Build Status: spider-check](https://github.com/qunitjs/jekyll-theme-amethyst/actions/workflows/spider-check.yaml/badge.svg)](https://github.com/qunitjs/jekyll-theme-amethyst/actions/workflows/spider-check.yaml)
[![rubygems.org: jekyll-theme-amethyst](https://badge.fury.io/rb/jekyll-theme-amethyst.svg)](https://rubygems.org/gems/jekyll-theme-amethyst)

# Amethyst theme

This repository houses the Amethyst theme for Jekyll.

## Getting started

To create a new site, use the **[Getting started](docs/getting-started.md)** guide,
or browse the minimal example in the [example](https://github.com/qunitjs/jekyll-theme-amethyst/tree/example) branch.

## Credits

The theme was designed by [Trent Willis](https://github.com/trentmwillis/) in 2018 for the [qunitjs.com](https://qunitjs.com/) website ([qunitjs/qunitjs.com#151](https://github.com/qunitjs/qunitjs.com/issues/151#issuecomment-655154878)).

Thanks to [Leo Balter](https://github.com/leobalter) for initiating the use of Markdown-based static sites for QUnit in 2015 ([qunitjs/api.qunitjs.com#150](https://github.com/qunitjs/api.qunitjs.com/pull/150)).

## Contributing

### Local development

Requirements:

* [Ruby](https://www.ruby-lang.org/) (tested with Ruby 2.7+)
* [Bundler](https://bundler.io/) (if missing, install with `gem install bundler`)

To install or update Jekyll and plugins:

```shell
bundle update
```

To generate the site and serve it locally at <http://localhost:4000/>:

```shell
bundle exec jekyll serve
```

### Releasing

* Create a signed tag in Git, named as a semver number like `vX.Y.Z`.
* Push the tag.
* CI will create and publish a new package to <https://rubygems.org/gems/jekyll-theme-amethyst>.
