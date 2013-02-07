Gem::Specification.new do |s|
  s.name = 'backtrack-xpath'
  s.version = '0.1.1'
  s.summary = 'backtrack-xpath accepts a REXML::Element and returns the full XPath back to the root.'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/backtrack-xpath.pem'
  s.cert_chain  = ['gem-public_cert.pem']
end
