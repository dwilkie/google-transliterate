# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google/transliterate/version'

Gem::Specification.new do |spec|
  spec.name          = "google-transliterate"
  spec.version       = Google::Transliterate::VERSION
  spec.authors       = ["David Wilkie"]
  spec.email         = ["dwilkie@gmail.com"]
  spec.description   = "Transliterates from a script into English phonetical"
  spec.summary       = "Transliterates from a script into English phonetical"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "fakeweb"
end
