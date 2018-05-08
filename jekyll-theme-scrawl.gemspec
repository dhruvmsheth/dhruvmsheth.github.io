# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-scrawl"
  spec.version       = "0.1.0"
  spec.authors       = ["Matt Light"]
  spec.email         = ["matt.light@lightdatasys.com"]

  spec.summary       = "Jekyll theme for written"
  spec.homepage      = "https://github.com/lightster/scrawl"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.7"
  spec.add_runtime_dependency 'jekyll-github-metadata', '~> 2.9'
  spec.add_runtime_dependency 'jekyll-seo-tag', '~> 2.0'

  spec.add_runtime_dependency 'jekyll-coffeescript'
  spec.add_runtime_dependency 'jekyll-gist'
  spec.add_runtime_dependency 'jekyll-paginate'
  spec.add_runtime_dependency 'jekyll-relative-links'
  spec.add_runtime_dependency 'jekyll-optional-front-matter'
  spec.add_runtime_dependency 'jekyll-readme-index'
  spec.add_runtime_dependency 'jekyll-default-layout'
  spec.add_runtime_dependency 'jekyll-titles-from-headings'
end
