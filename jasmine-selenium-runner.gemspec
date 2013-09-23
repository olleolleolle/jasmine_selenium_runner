# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jasmine/runners/selenium/version'

Gem::Specification.new do |spec|
  spec.name          = "jasmine_selenium_runner"
  spec.version       = Jasmine::Runners::Selenium::VERSION
  spec.authors       = ["Rajan Agaskar", "Gregg Van Hove" ]
  spec.email         = ["rajan@pivotallabs.com", 'gvanhove@pivotallabs.com']
  spec.description      = %q{Run your jasmine tests in a real live browser!}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage         = "http://pivotal.github.com/jasmine/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_dependency 'jasmine', '~> 2.0.0.alpha'
  spec.add_dependency 'selenium-webdriver', '~> 2.35'
end