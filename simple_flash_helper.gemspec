# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_flash_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_flash_helper"
  spec.version       = SimpleFlashHelper::VERSION
  spec.authors       = ["John Koht"]
  spec.email         = ["john@kohactive.com"]
  spec.description   = "Simple Flash Helper and Front-end Utilities"
  spec.summary       = "Simple Flash Helper and Front-end Utilities"
  spec.homepage      = "http://www.github.com/johnkoht/simple_flash_helper"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
