Gem::Specification.new do |s|
    s.name = "scoobydoo"
    s.version = "1.0.1"
    s.date = Time.new.strftime("%Y-%m-%d")
    s.summary = "Cross-platform which for ruby"
    s.description = "Cross-platform which for ruby."
    s.authors = ["Miles Whittaker"]
    s.email = "mj@whitta.dev"
    s.files = Dir["lib/**/*.rb"]
    s.homepage = "https://gitlab.com/mjwhitta/scoobydoo"
    s.license = "GPL-3.0"
    s.add_development_dependency("rake", "~> 13.0", ">= 13.0.0")
end
