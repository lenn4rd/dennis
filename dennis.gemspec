lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dennis/version'

Gem::Specification.new do |spec|
  spec.name          = 'dennis'
  spec.version       = Dennis::VERSION
  spec.authors       = ['Lennard Timm']
  spec.email         = ['hi@lenn4rd.io']

  spec.summary       = 'A simple DSL for defining DNS record sets'
  spec.homepage      = 'https://github.com/lenn4rd/dennis'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   << 'dennis'
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'byebug', '~> 10.0'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'rubocop', '~> 0.53.0'
end
