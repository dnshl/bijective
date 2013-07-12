# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'bijective/version'

Gem::Specification.new do |s|
  s.name        = 'bijective'
  s.version     = Bijective::VERSION
  s.date        = '2013-07-05'
  s.summary     = "bijective decodes and encodes via a generated character sequence"
  s.description = "bijective can be used to decode strings and encode numbers"
  s.authors     = ["Dennis Hall"]
  s.email       = 'dennis@dennishall.de'
  s.homepage    = 'https://github.com/dnshl/bijective'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
