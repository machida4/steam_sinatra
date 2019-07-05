# -*- encoding: utf-8 -*-
# stub: steam-api 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "steam-api".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Haberer".freeze]
  s.date = "2015-11-01"
  s.description = "Simple Steam Gem".freeze
  s.email = ["bhaberer@gmail.com".freeze]
  s.homepage = "https://github.com/bhaberer/steam-api".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Simple Gem to interact witht the Steam Web API".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 10"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.7"])
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.7", ">= 1.7.7"])
      s.add_runtime_dependency(%q<json>.freeze, ["~> 1.7", ">= 1.7.7"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 10"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3"])
      s.add_dependency(%q<coveralls>.freeze, ["~> 0.7"])
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_dependency(%q<multi_json>.freeze, ["~> 1.7", ">= 1.7.7"])
      s.add_dependency(%q<json>.freeze, ["~> 1.7", ">= 1.7.7"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.7"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.7", ">= 1.7.7"])
    s.add_dependency(%q<json>.freeze, ["~> 1.7", ">= 1.7.7"])
  end
end
