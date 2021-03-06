# encoding: UTF-8
Gem::Specification.new do |s|



  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_twilio'
  s.version     = '0.1.0'
  s.summary     = 'Adds twilio support to spree'
  s.description = 'Adds twilio support to spree'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Sanad Liaquat'
  s.email     = 'sanadhussain@gmail.com'
  s.homepage  = 'https://github.com/sliaquat'

  s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '4.1.12'

end
