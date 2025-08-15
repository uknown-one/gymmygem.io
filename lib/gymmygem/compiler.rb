module Gymmygem
  class Compiler
    def initialize(ast)
      @ast = ast
    end

    def compile
      @ast[:program].map { |component| compile_component(component) }.join("\n")
    end

    def compile_component(node)
      name = node[:component_name]
      arg = node[:arg]
      html = compile_html(node[:body])
      "<!-- Component: #{name}(#{arg}) -->\n#{html}"
    end

    def compile_html(nodes)
      nodes.map do |el|
        tag = el[:tag]
        classes = el[:classes]&.map { |c| c[0] }.join(" ")
        content = compile_content(el[:content])

        "<#{tag} class='#{classes}'>#{content}</#{tag}>"
      end.join("\n")
    end

    def compile_content(content)
      content.map do |c|
        if c.is_a?(Hash) && c[:string]
          c[:string]
        elsif c.is_a?(Hash) && c[:interpolation]
          "<%= #{c[:interpolation]} %>"
        else
          c.to_s
        end
      end.join
    end
  end
end

