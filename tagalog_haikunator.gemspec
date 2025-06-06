# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tagalog_haikunator/version"

Gem::Specification.new do |spec|
  spec.name     = "tagalog_haikunator"
  spec.version       = TagalogHaikunator::VERSION
  spec.authors       = ["Nicu Listana", "Usman Bashir"]
  spec.email         = ["nicu@adoboenterprises.com"]
  spec.summary       = "Heroku-like random name generator with Tagalog adjectives."
  spec.description   = "Generate memorable random names to use in your apps"\
                       " or anywhere else."
  spec.homepage      = "https://github.com/adobocorp/tagalog-haikunator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
