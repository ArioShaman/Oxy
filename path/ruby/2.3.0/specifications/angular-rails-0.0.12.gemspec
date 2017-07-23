# -*- encoding: utf-8 -*-
# stub: angular-rails 0.0.12 ruby lib

Gem::Specification.new do |s|
  s.name = "angular-rails"
  s.version = "0.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nate Kidwell"]
  s.date = "2012-10-11"
  s.description = "Helpers for angularjs in a rails project (ripped from backbone-rails)"
  s.email = ["nate@ludicast.com"]
  s.homepage = "http://github.com/ludicast/angular-rails"
  s.rubygems_version = "2.5.1"
  s.summary = "Helpers for angularjs in a rails project"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 0"])
      s.add_runtime_dependency(%q<coffee-script>, ["~> 2.2.0"])
    else
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<coffee-script>, ["~> 2.2.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<coffee-script>, ["~> 2.2.0"])
  end
end
