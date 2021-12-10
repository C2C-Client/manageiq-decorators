$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "manageiq/decorators/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "manageiq-decorators"
  s.version     = ManageIQ::Decorators::VERSION
  s.authors     = ["ManageIQ Developers"]
  s.homepage    = "https://github.com/manageiq/manageiq-decorators"
  s.summary     = "Model decorators with the related SVG assets for ManageIQ"
  s.description = "Model decorators with the related SVG assets for ManageIQ"
  s.licenses    = ["Apache-2.0"]

  s.files = Dir["{app,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]
end
