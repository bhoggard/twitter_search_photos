# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twitter_search_photos/version'

Gem::Specification.new do |spec|
  spec.name          = "twitter_search_photos"
  spec.version       = TwitterSearchPhotos::VERSION
  spec.authors       = ["Barry Hoggard"]
  spec.email         = ["barry@tristanmedia.com"]
  spec.description   = %q{Ruby gem to find photos on Twitter with a search query}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/bhoggard/twitter_search_photos"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.signing_key   = File.expand_path("~/.gem/gem-private_key.pem")
  spec.cert_chain    = [ File.expand_path("~/.gem/gem-public_cert.pem") ]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "dotenv-rails"

  spec.add_dependency "twitter", "~> 4.6"
end
