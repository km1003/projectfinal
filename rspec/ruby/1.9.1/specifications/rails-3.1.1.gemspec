# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rails"
  s.version = "3.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Heinemeier Hansson"]
  s.date = "2011-10-06"
  s.description = "Ruby on Rails is a full-stack web framework optimized for programmer happiness and sustainable productivity. It encourages beautiful code by favoring convention over configuration."
  s.email = "david@loudthinking.com"
  s.executables = ["rails"]
  s.files = ["bin/rails"]
  s.homepage = "http://www.rubyonrails.org"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "1.8.11"
  s.summary = "Full-stack web application framework."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["= 3.1.1"])
      s.add_runtime_dependency(%q<actionpack>, ["= 3.1.1"])
      s.add_runtime_dependency(%q<activerecord>, ["= 3.1.1"])
      s.add_runtime_dependency(%q<activeresource>, ["= 3.1.1"])
      s.add_runtime_dependency(%q<actionmailer>, ["= 3.1.1"])
      s.add_runtime_dependency(%q<railties>, ["= 3.1.1"])
      s.add_runtime_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<activesupport>, ["= 3.1.1"])
      s.add_dependency(%q<actionpack>, ["= 3.1.1"])
      s.add_dependency(%q<activerecord>, ["= 3.1.1"])
      s.add_dependency(%q<activeresource>, ["= 3.1.1"])
      s.add_dependency(%q<actionmailer>, ["= 3.1.1"])
      s.add_dependency(%q<railties>, ["= 3.1.1"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["= 3.1.1"])
    s.add_dependency(%q<actionpack>, ["= 3.1.1"])
    s.add_dependency(%q<activerecord>, ["= 3.1.1"])
    s.add_dependency(%q<activeresource>, ["= 3.1.1"])
    s.add_dependency(%q<actionmailer>, ["= 3.1.1"])
    s.add_dependency(%q<railties>, ["= 3.1.1"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
