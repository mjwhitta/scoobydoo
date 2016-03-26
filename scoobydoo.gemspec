Gem::Specification.new do |s|
    s.name = "scoobydoo"
    s.version = "0.1.4"
    s.date = Time.new.strftime("%Y-%m-%d")
    s.summary = "Cross-platform which for ruby"
    s.description = "Cross-platform which for ruby."
    s.authors = [ "Miles Whittaker" ]
    s.email = "mjwhitta@gmail.com"
    s.files = Dir["lib/**/*.rb"]
    s.homepage = "https://mjwhitta.github.io/scoobydoo"
    s.license = "GPL-3.0"
    s.add_development_dependency("rake", "~> 10.5", ">= 10.5.0")
end
