$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "senape/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "senape"
  s.version     = Senape::VERSION
  s.authors     = ["Gregorio Setti"]
  s.email       = ["gregorio.setti@gmail.com"]
  s.homepage    = "https://github.com/desmondhume/senape"
  s.summary     = "Dead simple Rails jwt-based authentication library"
  s.description = "Dead simple Rails jwt-based authentication library"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency "bcrypt"
  s.add_dependency "jwt"

  s.add_development_dependency "sqlite3"
end
