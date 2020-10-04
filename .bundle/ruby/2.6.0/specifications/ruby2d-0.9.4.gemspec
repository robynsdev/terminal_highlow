# -*- encoding: utf-8 -*-
# stub: ruby2d 0.9.4 ruby lib
# stub: ext/ruby2d/extconf.rb

Gem::Specification.new do |s|
  s.name = "ruby2d".freeze
  s.version = "0.9.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tom Black".freeze]
  s.date = "2020-02-16"
  s.description = "Make cross-platform 2D applications in Ruby".freeze
  s.email = "tom@blacktm.com".freeze
  s.executables = ["ruby2d".freeze]
  s.extensions = ["ext/ruby2d/extconf.rb".freeze]
  s.files = ["bin/ruby2d".freeze, "ext/ruby2d/extconf.rb".freeze]
  s.homepage = "http://www.ruby2d.com".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Ruby 2D".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.8"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
  end
end
