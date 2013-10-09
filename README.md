# Introducing the Backtrack-xpath gem

If you need to find the Xpath to the current node in an XML document, try the Backtrack-xpath gem.

Example:

    require 'backtrack-xpath'

    xml =&lt;&lt;XML
    &lt;root&gt;
      &lt;a&gt;
        &lt;summary&gt;&lt;n/&gt;&lt;x1/&gt;&lt;x2/&gt;&lt;/summary&gt;
        &lt;records&gt;
          &lt;b&gt;
            &lt;summary&gt;&lt;y color='blue'/&gt;&lt;y2/&gt;&lt;/summary&gt;
            &lt;records&gt;
              &lt;c&gt;&lt;summary&gt;&lt;n/&gt;&lt;/summary&gt;&lt;records/&gt;&lt;/c&gt;
            &lt;/records&gt;
          &lt;/b&gt;
          &lt;b&gt;
            &lt;summary&gt;&lt;y color='red'/&gt;&lt;y2/&gt;&lt;/summary&gt;
            &lt;records&gt;
              &lt;c&gt;&lt;summary&gt;&lt;n/&gt;&lt;/summary&gt;&lt;records/&gt;&lt;/c&gt;
            &lt;/records&gt;
          &lt;/b&gt;

        &lt;/records&gt;
      &lt;/a&gt;
    &lt;/root&gt;  
    XML

    doc = Rexle.new xml
    node = doc.root.element '//y'
    puts BacktrackXPath.new(node).to_xpath #=&gt; root/a/records/b/summary/y


Note: An id or class attribute will be used in the XPath to help identify the element if they exist in any of the elements.

gem backtrackxpath xpath html
