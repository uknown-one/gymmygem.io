module Vireo
  module AST
    Component = Struct.new(:name, :arg, :body, :actions)
    HtmlBlock = Struct.new(:tag, :classes, :content)
    Action    = Struct.new(:name, :body)
    Interpolation = Struct.new(:expression)
    FunctionCall  = Struct.new(:name, :args)
    RawText       = Struct.new(:value)
  end
end

