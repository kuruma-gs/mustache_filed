# -*- encoding: utf-8 -*-

$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require File.join(File.dirname(__FILE__),'mustache_field/vars.rb')
require File.join(File.dirname(__FILE__),'mustache_field/parse.rb')
require File.join(File.dirname(__FILE__),'mustache_field/version.rb')

module MustacheField
  def self.included base
    base.send :include, Vars
    base.send :include, Parse
  end
end
