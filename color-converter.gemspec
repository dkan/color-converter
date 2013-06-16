lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'color_converter/version'

Gem::Specification.new do |s|
  s.name          = 'color-converter'
  s.version       = Color::Converter::VERSION
  s.authors       = ['Damien Kan']
  s.email         = ['damien.kan@gmail.com']
  s.description   = 'Color-converter is an easy way to convert hexcolor, RGB, and CMYK between each other.'
  s.summary       = ''
  s.homepage      = 'http://github.com/dkan/color-converter'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.9.3'

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rack-test'
end
