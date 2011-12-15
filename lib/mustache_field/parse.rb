# -*- encoding: utf-8 -*-
require 'mustache'

module MustacheField
  module Parse
    def self.included base
      base.extend ClassMethods
    end

    module ClassMethods
      def mustache_parse(s,hash={})
        return nil if !s
        h = hash.inject({}){|h,hh| h[hh[0].to_sym] = h[hh[0].to_s] = hh[1]; h}
        Mustache.render s, h
      end

      def mustache_fields *attrs
        if self.include? MustacheField::Vars
          attrs.each do |attr|
            define_method "parsed_#{attr}" do |hash={}|
              hash = self.vars if hash.empty?
              self.class.mustache_parse self.send(attr), hash
            end
          end
        else
          attrs.each do |attr|
            define_method "parsed_#{attr}" do |hash={}|
              self.class.mustache_parse self.send(attr), hash
            end
          end
        end
      end
    end

  end
end
