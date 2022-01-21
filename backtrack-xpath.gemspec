Gem::Specification.new do |s|
  s.name = 'backtrack-xpath'
  s.version = '0.2.0'
  s.summary = 'backtrack-xpath accepts a REXML::Element and returns the ' +
      'full XPath back to the root.'
    s.authors = ['James Robertson']
  s.files = Dir['lib/backtrack-xpath.rb']
  s.signing_key = '../privatekeys/backtrack-xpath.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/backtrack-xpath'
  s.required_ruby_version = '>= 2.1.2'
end
