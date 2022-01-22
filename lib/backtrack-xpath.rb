#!/usr/bin/env ruby

# file: backtrack-xpath.rb

# for use with the Rexle gem

class BacktrackXPath

  def initialize(node, use_attributes: true, ignore_id: false)

    @use_attributes, @ignore_id = use_attributes, ignore_id
    @xpath = doc_scan(node).flatten.compact.join('/')

  end

  def to_s
    @xpath
  end

  alias to_xpath to_s

  private

  def attribute_scan(node)

    result = ''

    list = @ignore_id ? [:class,'class'] : [:id, :class, 'id', 'class']
    attr = list.detect {|x| node.attributes.has_key? x}

    if attr then
      node.attribute(attr)

      value = if attr.to_sym == :id then
        node.attributes[attr]
      else
        attrval = node.attributes[attr]
        attrval[0] if attrval.is_a? Array
      end

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
