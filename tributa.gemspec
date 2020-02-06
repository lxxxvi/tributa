require_relative 'lib/tributa/version'

Gem::Specification.new do |spec|
  spec.name          = "tributa"
  spec.version       = Tributa::VERSION
  spec.authors       = ["mario"]
  spec.email         = ["github@lxxxvi.ch"]

  spec.summary       = %q{Tributa loads tax information from Swiss communities}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/lxxxvi/tributa"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lxxxvi/tributa"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "nokogiri"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "webmock"
end
