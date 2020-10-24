# Amethyst theme

This repository houses the Amethyst theme for Jekyll.

## Credits

The theme was designed by [Trent Willis](https://github.com/trentmwillis/) in 2018 for the [qunitjs.com](https://qunitjs.com/) website ([qunitjs/qunitjs.com#151](https://github.com/qunitjs/qunitjs.com/issues/151#issuecomment-655154878)).

Thanks to [Leo Balter](https://github.com/leobalter) for initiating the use of Markdown-based static sites for QUnit in 2015 ([qunitjs/api.qunitjs.com#150](https://github.com/qunitjs/api.qunitjs.com/pull/150)).

## Development

Requirements:

* [Ruby](https://www.ruby-lang.org/) (tested with Ruby 2.6+)
* [Bundler](https://bundler.io/) (if missing, install with `gem install bundler`)

To install Jekyll and plugins the first time:

```shell
bundle install
```

To update Jekyll and any plugins (e.g. after changing `Gemfile`):

```shell
bundle update
```

To generate the site and serve it locally at <http://localhost:4000/>:

```shell
bundle exec jekyll serve
```
