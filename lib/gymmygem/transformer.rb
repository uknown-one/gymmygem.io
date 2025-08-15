class Transform < Parslet::Transform
  rule(component_name: simple(:name), arg: simple(:arg), body: sequence(:body), actions: sequence(:actions)) do
    Vireo::AST::Component.new(name.to_s, arg.to_s, body, actions)
  end

  rule(tag: simple(:tag), classes: sequence(:classes), content: sequence(:content)) do
    Vireo::AST::HtmlBlock.new(tag.to_s, classes.map(&:to_s), content)
  end
end
