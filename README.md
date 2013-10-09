# Introducing the Backtrack-xpath gem

If you need to find the Xpath to the current node in an XML document, try the Backtrack-xpath gem.

Example:

    require 'backtrack-xpath'

    xml =<<XML
    <root>
      <a>
        <summary><n/><x1/><x2/></summary>
        <records>
          <b>
            <summary><y color='blue'/><y2/></summary>
            <records>
              <c><summary><n/></summary><records/></c>
            </records>
          </b>
          <b>
            <summary><y color='red'/><y2/></summary>
            <records>
              <c><summary><n/></summary><records/></c>
            </records>
          </b>

        </records>
      </a>
    </root>  
    XML

    doc = Rexle.new xml
    node = doc.root.element '//y'
    puts BacktrackXPath.new(node).to_xpath #=> root/a/records/b/summary/y


Note: An id or class attribute will be used in the XPath to help identify the element if they exist in any of the elements.

gem backtrackxpath xpath html
