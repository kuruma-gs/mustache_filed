# -*- encoding: utf-8 -*-
module MustacheField
  module Vars
    def self.included base
      base.class_eval do
        field :vars, type: Hash, default: {}
      end
    end

    # varsからstringにして返す
    # @author KURUMA
    # @since  1.1.0
    def vars_s
      return "" if vars.empty?
      vars.map{|k,v| "#{k}: #{v}"}.join('\n')
    end

    # stringであるvars_sからHashを作る
    # @author KURUMA
    # @since  1.1.0
    def vars_s= s
      return nil if s.blank?
      self.vars = Hash[*s.gsub(/:|\n/,",").gsub(/\s/,"").split(",")]
    end

  end
end

