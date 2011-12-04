# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gherkin"
  s.version = "2.6.5"
  s.platform = "x86-mingw32"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Sassak", "Gregory Hnatiuk", "Aslak Helles\u{f8}y"]
  s.date = "2011-11-15"
  s.description = "A fast Gherkin lexer/parser based on the Ragel State Machine Compiler."
  s.email = "cukes@googlegroups.com"
  s.homepage = "http://github.com/cucumber/gherkin"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "gherkin-2.6.5"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 1.4.6"])
      s.add_development_dependency(%q<cucumber>, [">= 1.1.2"])
      s.add_development_dependency(%q<rake>, [">= 0.9.2"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.21"])
      s.add_development_dependency(%q<rspec>, [">= 2.7.0"])
      s.add_development_dependency(%q<therubyracer>, [">= 0.9.9"])
      s.add_development_dependency(%q<yard>, [">= 0.7.3"])
      s.add_development_dependency(%q<rdiscount>, [">= 1.6.8"])
      s.add_development_dependency(%q<term-ansicolor>, [">= 1.0.6"])
      s.add_development_dependency(%q<builder>, [">= 2.1.2"])
    else
      s.add_dependency(%q<json>, [">= 1.4.6"])
      s.add_dependency(%q<cucumber>, [">= 1.1.2"])
      s.add_dependency(%q<rake>, [">= 0.9.2"])
      s.add_dependency(%q<bundler>, [">= 1.0.21"])
      s.add_dependency(%q<rspec>, [">= 2.7.0"])
      s.add_dependency(%q<therubyracer>, [">= 0.9.9"])
      s.add_dependency(%q<yard>, [">= 0.7.3"])
      s.add_dependency(%q<rdiscount>, [">= 1.6.8"])
      s.add_dependency(%q<term-ansicolor>, [">= 1.0.6"])
      s.add_dependency(%q<builder>, [">= 2.1.2"])
    end
  else
    s.add_dependency(%q<json>, [">= 1.4.6"])
    s.add_dependency(%q<cucumber>, [">= 1.1.2"])
    s.add_dependency(%q<rake>, [">= 0.9.2"])
    s.add_dependency(%q<bundler>, [">= 1.0.21"])
    s.add_dependency(%q<rspec>, [">= 2.7.0"])
    s.add_dependency(%q<therubyracer>, [">= 0.9.9"])
    s.add_dependency(%q<yard>, [">= 0.7.3"])
    s.add_dependency(%q<rdiscount>, [">= 1.6.8"])
    s.add_dependency(%q<term-ansicolor>, [">= 1.0.6"])
    s.add_dependency(%q<builder>, [">= 2.1.2"])
  end
end
