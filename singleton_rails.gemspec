$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "singleton-rails"
  s.version     = "0.0.2.1"
  s.authors     = ["Tim Kurvers", "Christoffer Winterkvist"]
  s.email       = ["johannes@hyper.no"]
  s.homepage    = "https://github.com/hyperoslo/singleton-rails"
  s.summary     = "Forever Alone Ruby Gem"
  s.description = "Adds singleton functionallity to ActiveRecord models"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "=> 4.0.0"

  s.add_development_dependency "sqlite3"
end
