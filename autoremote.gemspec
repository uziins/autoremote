# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autoremote/version'

Gem::Specification.new do |spec|
    spec.name          = "autoremote"
    spec.version       = AutoRemote::VERSION
    spec.authors       = [ "Magnus Smedberg" ]
    spec.email         = [ "magnus.smedberg@yurijware.com" ]
    spec.summary       = %q{A library for interacting with autoremote devices http://joaoapps.com/autoremote/}
    spec.homepage      = "http://altonv.github.io/autoremote/"
    spec.license       = "MIT"
    
    spec.files         = `git ls-files -z`.split("\x0")
    spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
    spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
    spec.require_paths = ["lib"]
    
    spec.add_development_dependency "bundler", "~> 1.7"
    spec.add_development_dependency "rake", "~> 10"
    spec.add_development_dependency "rspec", "~> 3"
    
    spec.add_runtime_dependency 'activerecord', '~> 4.2', '~> 4.2'
    spec.add_runtime_dependency 'sqlite3', '~> 1.3', '~> 1.3'
    spec.add_runtime_dependency 'httparty', '~> 0.13', '~> 0.13'
end
