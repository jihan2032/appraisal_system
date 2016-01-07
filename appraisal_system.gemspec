$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "appraisal_system/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "appraisal_system"
  s.version     = AppraisalSystem::VERSION
  s.authors     = ["jihan2032"]
  s.email       = ["jihan2032@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AppraisalSystem."
  s.description = "TODO: Description of AppraisalSystem."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_dependency "haml"
  s.add_dependency "haml-rails"
  s.add_dependency "coffee-rails"
  s.add_dependency "sass-rails", "~> 5.0"
  s.add_dependency "bootstrap-sass"

  s.add_development_dependency "sqlite3"
end
