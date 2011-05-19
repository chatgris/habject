# encoding: utf-8
module Habject
  module Hash
    def method_missing(name)
      return self[name.to_s] if key? name.to_s
      return self[name.to_sym] if key? name.to_sym
      super
    end

    def respond_to?(method)
      has_key?(method.to_s) || super
    end
  end
end

Hash.send(:include, Habject::Hash)
