# frozen_string_literal: true

require_relative "gymmygem/version"

require 'parslet'

module Gymmygem
  class Parser < Parslet::Parser
    rule(:space)     { match('\s').repeat(1) }
    rule(:space?)    { space.maybe }
    rule(:newline)   { str("\n") }

    rule(:identifier)  { match('[a-zA-Z_]') >> match('[a-zA-Z0-9_]').repeat }
    rule(:string)      { str('"') >> (str('"').absent? >> any).repeat.as(:string) >> str('"') }

    rule(:interpolation) { str('#{') >> (identifier).as(:interpolation) >> str('}') }
    rule(:interpolated_string) do
      str('"') >>
      (
        interpolation | (str('"').absent? >> any)
      ).repeat.as(:string) >>
      str('"')
    end

    rule(:tag_name) { match('[a-z]').repeat(1).as(:tag) }

    rule(:html_block) do
      tag_name >>
      (str('.') >> identifier).repeat.as(:classes) >>
      str('{') >> space? >>
      (html_block | interpolated_string | string | identifier).repeat.as(:content) >>
      str('}')
    end

    rule(:action) do
      str('action') >> space >> identifier.as(:action_name) >>
      str('{') >>
      (interpolated_string | function_call).repeat.as(:body) >>
      str('}')
    end

    rule(:function_call) do
      identifier.as(:func) >> str('(') >>
      (interpolated_string | identifier).repeat.as(:args) >>
      str(')')
    end

    rule(:component) do
      str('component') >> space >> identifier.as(:component_name) >>
      str('(') >> identifier.as(:arg) >> str(')') >>
      str('{') >> html_block.repeat.as(:body) >> action.repeat.as(:actions) >> str('}')
    end

    rule(:statement) { component }
    rule(:program) { statement.repeat.as(:program) }

    root :program
  end
end


