# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lrcat/version'

Gem::Specification.new do |spec|
  spec.name          = 'lrcat'
  spec.version       = Lrcat::VERSION
  spec.authors       = ['Maxime Mouchet']
  spec.email         = ['mouchet.max@gmail.com']
  spec.description   = %q{ActiveRecord mappings for the Lightroom Catalog.}
  spec.summary       = %q{ActiveRecord mappings for the Lightroom Catalog.}
  spec.homepage      = 'https://github.com/maxmouchet/lrcat.rb'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_runtime_dependency 'sqlite3', '~> 1.3'
  spec.add_runtime_dependency 'activerecord', '~> 4.0'
end
