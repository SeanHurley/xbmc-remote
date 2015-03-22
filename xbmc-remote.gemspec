# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xbmc/version'

Gem::Specification.new do |spec|
  spec.name          = "xbmc-remote"
  spec.version       = XBMC::VERSION
  spec.authors       = ["hurley"]
  spec.email         = ["sean.hurley6@gmail.com"]
  spec.summary       = %q{Ruby client to control XBMC}
  spec.description   = %q{Uses the jsonrpc procol to issue commands to control XBMC}
  spec.homepage      = "https://github.com/SeanHurley/xbmc-remote"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "httparty", "~> 0.13"
end
