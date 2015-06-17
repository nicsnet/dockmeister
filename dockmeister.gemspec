# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dockmeister/version'

Gem::Specification.new do |spec|
  spec.name          = "dockmeister"
  spec.version       = Dockmeister::VERSION
  spec.authors       = ["Bruno Abrantes"]
  spec.email         = ["babrantes@babbel.com"]
  spec.summary       = "Orchestrates several Docker-based applications into one."
  spec.homepage      = "https://github.com/lessonnine/dockmeister.gem"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2.0"
  spec.add_development_dependency "pry-byebug"
end