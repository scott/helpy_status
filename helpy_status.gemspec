$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "helpy_status/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "helpy_status"
  s.version     = HelpyStatus::VERSION
  s.authors     = ["Scott Miller"]
  s.email       = ["scott.miller.utah@gmail.com"]
  s.homepage    = "http://helpy.io/"
  s.summary     = "A simple add-on for the Helpy Support system."
  s.description = "Adds a status board to Helpy to show the current status of systems."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
