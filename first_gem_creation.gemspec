# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'first_gem_creation/version'

Gem::Specification.new do |spec|
  spec.name          = "first_gem_creation"
  spec.version       = FirstGemCreation::VERSION
  spec.authors       = ["Alyssa Pratt"]
  spec.email         = ["snubly1@gmail.com"]

  spec.summary       = %q{This is my first gem. I am learning how to create gems!}
  spec.homepage      = "https://github.com/Pratt0923/first_gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
