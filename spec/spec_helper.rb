require 'rspec'
require 'rubygems'
require 'bundler/setup'

require 'simplecov'
require 'coveralls'
SimpleCov.start

require 'rack/test'
require 'color_converter'

RSpec.configure do |config|
  config.color_enabled = true
end