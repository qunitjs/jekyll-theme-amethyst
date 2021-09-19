Gem::Specification.new do |spec|
  spec.name     = "jekyll-theme-amethyst"
  spec.version  = "0.2.1"
  spec.summary  = "https://github.com/qunitjs/jekyll-theme-amethyst"
  spec.authors  = ["Timo Tijhof", "Trent Willis"]
  spec.files    = `git ls-files -z`.split("\x0")

  spec.license   = "MIT"
  spec.homepage  = "https://github.com/qunitjs/jekyll-theme-amethyst"

  spec.metadata["plugin_type"] = "theme"
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll", ">= 4.2", "< 5.0"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1.0"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16.0"
  spec.add_runtime_dependency "jekyll-relative-links", "~> 0.6.1"
  # For blog
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15.1"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.2.1"
  # Temporary fix until there is a release with https://github.com/jekyll/jekyll/pull/8524/
  spec.add_runtime_dependency "webrick", "~> 1.7"
end
