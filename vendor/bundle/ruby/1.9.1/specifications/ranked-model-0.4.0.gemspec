# -*- encoding: utf-8 -*-
# stub: ranked-model 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ranked-model"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Matthew Beale"]
  s.date = "2014-02-25"
  s.description = "ranked-model is a modern row sorting library built for Rails 3 & 4. It uses ARel aggressively and is better optimized than most other libraries."
  s.email = ["matt.beale@madhatted.com"]
  s.homepage = "https://github.com/mixonic/ranked-model"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "An acts_as_sortable replacement built for Rails 3 & 4"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.1.12"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.7"])
      s.add_development_dependency(%q<genspec>, ["~> 0.2.8"])
      s.add_development_dependency(%q<mocha>, ["~> 0.14.0"])
      s.add_development_dependency(%q<database_cleaner>, ["~> 1.2.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.1.0"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.1.12"])
      s.add_dependency(%q<rspec>, ["~> 2.13.0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.7"])
      s.add_dependency(%q<genspec>, ["~> 0.2.8"])
      s.add_dependency(%q<mocha>, ["~> 0.14.0"])
      s.add_dependency(%q<database_cleaner>, ["~> 1.2.0"])
      s.add_dependency(%q<rake>, ["~> 10.1.0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.1.12"])
    s.add_dependency(%q<rspec>, ["~> 2.13.0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.7"])
    s.add_dependency(%q<genspec>, ["~> 0.2.8"])
    s.add_dependency(%q<mocha>, ["~> 0.14.0"])
    s.add_dependency(%q<database_cleaner>, ["~> 1.2.0"])
    s.add_dependency(%q<rake>, ["~> 10.1.0"])
  end
end
