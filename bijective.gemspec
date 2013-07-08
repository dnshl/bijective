# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'bijective/version'

Gem::Specification.new do |s|
  s.name        = 'bijective'
  s.version     = Bijective::VERSION
  s.date        = '2013-07-05'
  s.summary     = "Bijective"
  s.description = "Bijective"
  s.authors     = ["Dennis Hall"]
  s.email       = 'dennis@dennishall.de'
  s.files       = ["lib/bijective.rb"]
  s.homepage    = 'http://rubygems.org/gems/bijective'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
