#!/usr/bin/env ruby

# file: backtrack-xpath.rb

# for use with the Rexle gem

class BacktrackXPath

  def initialize(node, use_attributes: true)

    @use_attributes = use_attributes
    @xpath = doc_scan(node).flatten.compact.join('/')

  end

  def to_s
    @xpath
  end

  alias to_xpath to_s

  private

  def attribute_scan(node)

    result = ''
    attr = [:id, :class, 'id', 'class'].detect {|x| node.attributes.has_key? x}

    if attr then
      node.attribute(attr)
      value = attr.to_sym == :id ? node.attributes[attr] : \
                                  node.attributes[attr][0]
      result = "[@%s='%s']" % [attr, value]
    end
    result
  end

  def doc_scan(node)

    return unless node.parent

    name = node.name

    attribute = (@use_attributes and node.attributes) ? attribute_scan(node) : ''
    result = doc_scan(node.parent)

    [result, name + attribute]
  end
end
