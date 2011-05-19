Gem::Specification.new do |s|
  s.name             = "habject"
  s.version          = "0.1.0"
  s.date             = Time.now.utc.strftime("%Y-%m-%d")
  s.homepage         = "http://github.com/chatgris/habject"
  s.authors          = "chatgris"
  s.email            = "jboyer@af83.com"
  s.description      = "Add object type notation to ruby hash."
  s.summary          = "Add object type notation to ruby hash."
  s.extra_rdoc_files = %w(README.md)
  s.files            = Dir["LICENSE", "README.md", "Gemfile", "lib/**/*.rb", "init.rb"]
  s.require_paths    = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.add_development_dependency "rspec", "~>2.6"
end
