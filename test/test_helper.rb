$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'simplecov'
SimpleCov.start

require 'jekyll'
require 'jekyll-latex-block'

require 'minitest/rg'
require 'minitest/autorun'
