$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ym_links/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ym_links"
  s.version     = YmLinks::VERSION
  s.authors     = ["Matt Atkins", "Ian Mooney"]
  s.email       = ["matt@yoomee.com", "ian@yoomee.com"]
  s.homepage    = "http://www.yoomee.com"
  s.summary     = "Summary of YmLinks."
  s.description = "Description of YmLinks."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency 'cocoon', "1.0.22"   
  s.add_development_dependency 'ym_tools', '~> 0.1.1'
  s.add_development_dependency "geminabox"
  
  
end
