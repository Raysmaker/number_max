lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "number_max/version"

Gem::Specification.new do |spec|
  spec.name          = "number_max"
  spec.version       = NumberMax::VERSION
  spec.authors       = ["Alexey V.Ryapisov"]
  spec.email         = ["alexey.ryapisov@yandex.ru"]
  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.metadata    = { "source_code_uri" => "https://github.com/example/example" }
  spec.files       = ["lib/number_max.rb"]
  spec.bindir        = "bin"
  spec.executables   = ['nmax']
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
