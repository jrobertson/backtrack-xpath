Gem::Specification.new do |s|
  s.name = 'backtrack-xpath'
  s.version = '0.1.8'
  s.summary = 'backtrack-xpath accepts a REXML::Element and returns the full XPath back to the root.'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/backtrack-xpath.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/backtrack-xpath'
  s.required_ruby_version = '>= 2.1.2'
end
