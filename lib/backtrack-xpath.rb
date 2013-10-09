#!/usr/bin/env ruby

# file: backtrack-xpath.rb

class BacktrackXPath

  def initialize(node)
    @xpath = doc_scan(node).flatten.compact.join('/')
  end

  def to_s
    @xpath
  end

  alias to_xpath to_s

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
    attribute = node.attributes ? attribute_scan(node) : ''
    result = node.parent.parent ? doc_scan(node.parent) : ''

    [result, name + attribute]
  end
end