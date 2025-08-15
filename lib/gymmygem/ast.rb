module Gymmygem::AST
  class Component < Struct.new(:name, :arg, :body, :actions); end
  class HtmlBlock < Struct.new(:tag, :classes, :content); end
  class Interpolation < Struct.new(:expr); end
  # etc...
end
