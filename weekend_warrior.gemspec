# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{weekend_warrior}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ben Moss and James Cropcho"]
  s.date = %q{2010-06-13}
  s.description = %q{A gem for handling 5-day weeks by separating weekend days from weekdays}
  s.email = %q{moss.127@gmail.com}
  s.extra_rdoc_files = ["lib/weekend_warrior.rb"]
  s.files = ["Rakefile", "init.rb", "lib/weekend_warrior.rb", "spec/weekend_warrior_spec.rb", "Manifest", "weekend_warrior.gemspec"]
  s.homepage = %q{http://github.com/benmoss/weekend_warrior}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Weekend_warrior"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{weekend_warrior}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A gem for handling 5-day weeks by separating weekend days from weekdays}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
