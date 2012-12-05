# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'track_me/version'

Gem::Specification.new do |gem|
  gem.name          = "track_me"
  gem.version       = TrackMe::VERSION
  gem.authors       = ["Jim Ruther Nill"]
  gem.email         = ["jim@netengine.com.au"]
  gem.description   = %q{Easy way to add a metric system using javascript and known metric saas}
  gem.summary       = %q{Easily add multiple metric systems}
  gem.homepage      = "https://github.com/jvnill/track_me"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'actionpack'
end
