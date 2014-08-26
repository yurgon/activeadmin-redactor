# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activeadmin/redactor/version'

Gem::Specification.new do |spec|
  spec.name          = "activeadmin-redactor"
  spec.version       = Activeadmin::Redactor::VERSION
  spec.authors       = ["Karl Entwistle"]
  spec.email         = ["karl.entwistle@unboxedconsulting.com"]
  spec.summary       = %q{Redactor WYSIWYG Editor Integration for ActiveAdmin resources.}
  spec.homepage      = "http://imperavi.com/redactor/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
