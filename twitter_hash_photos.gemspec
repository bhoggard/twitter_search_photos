# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twitter_hash_photos/version'

Gem::Specification.new do |spec|
  spec.name          = "twitter_hash_photos"
  spec.version       = TwitterHashPhotos::VERSION
  spec.authors       = ["Barry Hoggard"]
  spec.email         = ["barry@tristanmedia.com"]
  spec.description   = %q{Ruby gem to find photos on Twitter by hashtag}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
