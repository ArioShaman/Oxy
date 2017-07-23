# -*- encoding: utf-8 -*-
# stub: ng_will_paginate 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ng_will_paginate"
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Cheri Allen", "Utah Kate Newman", "Patrick Dent"]
  s.date = "2016-01-13"
  s.description = ""
  s.email = ["nirds@nird.us"]
  s.homepage = "http://github.com/nirds/ng_will_paginate"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Allows you to incorporate will_paginate into an Angular on Ruby on Rails app."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.8"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_runtime_dependency(%q<will_paginate>, [">= 0"])
      s.add_development_dependency(%q<jasmine-rails>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<coffee-rails>, [">= 0"])
      s.add_development_dependency(%q<angularjs-rails>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.8"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<will_paginate>, [">= 0"])
      s.add_dependency(%q<jasmine-rails>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<coffee-rails>, [">= 0"])
      s.add_dependency(%q<angularjs-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.8"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<will_paginate>, [">= 0"])
    s.add_dependency(%q<jasmine-rails>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<coffee-rails>, [">= 0"])
    s.add_dependency(%q<angularjs-rails>, [">= 0"])
  end
end
