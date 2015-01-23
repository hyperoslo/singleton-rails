$:.push File.expand_path('../lib', __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'singleton-rails'
  s.version     = '0.0.2.1'
  s.authors     = ['Tim Kurvers', 'Christoffer Winterkvist']
  s.email       = ['johannes@hyper.no']
  s.homepage    = 'https://github.com/hyperoslo/singleton-rails'
  s.summary     = 'Adds singleton functionallity to ActiveRecord models'
  s.description = 'Adds singleton functionallity to ActiveRecord models'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile']

<<<<<<< HEAD
  s.add_dependency "rails", '>= 4.0.6', '< 5.0.0'
=======
  s.add_dependency 'rails', '~> 4.0.0'
>>>>>>> 8c055cb8c9e885659028f4cb3d88abc132477f1b
end
