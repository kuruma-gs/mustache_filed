# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "mustache_field/version"

Gem::Specification.new do |s|
  s.name        = "current"
  s.version     = MustacheField::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["kuruma3"]
  s.email       = ["kuruma@galileoscope.com"]
  s.homepage    = %q{http://github.com/#{github_username}/#{project_name}}
  s.summary     = "add mustache field in mongoid models"
  s.description = "add mustache field in mongoid models"

  s.add_dependency("mongoid", ">= 2.0.0")
  s.add_dependency("mustache", ">= 0.1.0")

  s.files        = Dir.glob("lib/**/*") + %w(README.rdoc Rakefile)
  s.require_path = 'lib'
end
