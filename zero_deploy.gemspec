$:.push File.expand_path("../lib", __FILE__)
require "zero_deploy/version"

Gem::Specification.new do |s|
  s.name        = "zero_deploy"
  s.version     = ZeroDeploy::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Railsware"]
  s.email       = ["contact@railsware.com"]
  s.homepage    = "https://github.com/railsware/zero_deploy/"
  s.summary     = %q{A gem that dramatically decreases your deployemnt time}
  s.description = %q{A gem that dramatically decreases your deployemnt time by improving all key actions like assets precompilation and gems installation}

  s.add_development_dependency "rspec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = ["zero_deploy"]
  s.require_paths = ["lib"]
end
