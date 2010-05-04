#!/usr/bin/ruby

# file: backtrack-xpath.rb

class BacktrackXPath

  def initialize(node)
    @xpath = doc_scan(node).flatten.compact.join('/')
  end

  def to_s
    @xpath
  end

  private

  def attribute_scan(node)
    result = ''
    attr = %w(id class).detect {|x| node.attributes.has_key? x}
    if attr then
      value = node.attribute(attr).value
      result = "[@%s='%s']" % [attr, value]
    end
    result
  end

  def doc_scan(node)
    name = node.name
    attribute = attribute_scan(node)
    result = doc_scan(node.parent) if node.parent.name != node.root.name
    [result, name.to_s + attribute]
  end
end
