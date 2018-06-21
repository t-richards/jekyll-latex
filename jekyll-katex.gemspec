lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/latex/version'

Gem::Specification.new do |spec|
  spec.name = 'jekyll-latex'
  spec.version = Jekyll::Latex::VERSION
  spec.authors = ['Tom Richards']
  spec.email = ['tom@tomrichards.net']

  spec.summary = 'LaTeX integration for Jekyll'
  spec.description = 'Renders LaTeX formulas to your site via KaTeX'
  spec.homepage = 'https://github.com/t-richards/jekyll-latex'
  spec.license = 'MIT'

  # Files in version control
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(bin|test)/|^(Rakefile)|^\.})
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.57.2'
  spec.add_development_dependency 'simplecov', '~> 0.16'

  spec.add_dependency 'execjs', '~> 2.7'
  spec.add_dependency 'jekyll', '~> 3.3'
end
