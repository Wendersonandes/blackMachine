$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin"
  s.version     = Admin::VERSION
  s.authors     = ["Wendersonandes"]
  s.email       = ["oldmaverick@gmail.com"]
	s.homepage    = "http://www.blackmachine.show"
  s.summary     = "Summary of Admin."
  s.description = "Description of Admin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.8"
	s.add_dependency "godmin", "~> 1.5"
  s.add_development_dependency "pg"
  s.add_development_dependency "jquery-fileupload-rails"
end
