require 'rspec'
require 'rubygems'
require 'bundler/setup'

require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

require 'rack/test'
require 'color_converter'

RSpec.configure do |config|
  config.color_enabled = true
end