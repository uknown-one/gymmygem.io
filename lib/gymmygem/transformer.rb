require 'parslet'
require_relative 'ast'

module Vireo
  class Transform < Parslet::Transform
    rule(string: simple(:str)) do
      Vireo::AST::RawText.new(str.to_s)
    end

    rule(interpolation: simple(:expr)) do
      Vireo::AST::Interpolation.new(expr.to_s)
    end

    rule(func: simple(:name), args: sequence(:args)) do
      Vireo::AST::FunctionCall.new(name.to_s, args)
    end

    rule(tag: simple(:tag), classes: sequence(:classes), content: sequence(:content)) do
      Vireo::AST::HtmlBlock.new(tag.to_s, classes.map(&:to_s), content)
    end

    rule(action_name: simple(:name), body: sequence(:body)) do
      Vireo::AST::Action.new(name.to_s, body)
    end

    rule(component_name: simple(:name), arg: simple(:arg), body: sequence(:body), actions: sequence(:actions)) do
      Vireo::AST::Component.new(name.to_s, arg.to_s, body, actions)
    end
  end
end

class Transform < Parslet::Transform
  rule(component_name: simple(:name), arg: simple(:arg), body: sequence(:body), actions: sequence(:actions)) do
    Vireo::AST::Component.new(name.to_s, arg.to_s, body, actions)
  end

  rule(tag: simple(:tag), classes: sequence(:classes), content: sequence(:content)) do
    Vireo::AST::HtmlBlock.new(tag.to_s, classes.map(&:to_s), content)
  end
end
