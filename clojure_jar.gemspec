# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clojure_jar/version'

Gem::Specification.new do |spec|
  spec.name          = "clojure_jar"
  spec.version       = ClojureJar::VERSION
  spec.authors       = ["Stefan Huber"]
  spec.email         = ["MSNexploder@gmail.com"]
  spec.summary       = "The Clojure jar"
  spec.description   = "The Clojure jar - nicely packaged as a Ruby gem."
  spec.homepage      = "https://github.com/msnexploder/clojure_jar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake"
end
