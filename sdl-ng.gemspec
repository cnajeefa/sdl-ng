# coding: utf-8
lib = File.expand_path('lib', __dir__)
$:.unshift(lib) unless $:.include?(lib)

begin
  require 'sdl'
rescue Exception => e
  puts e
end

Gem::Specification.new do |spec|
  spec.name          = 'sdl-ng'
  spec.version       = SDL::NG::VERSION
  spec.authors       = ['Mathias Slawik']
  spec.email         = ['mathias.slawik@tu-berlin.de']
  spec.description   = %q{Next Generation Service Description Language}
  spec.summary       = %q{Framework for building descriptions of business services.}
  spec.homepage      = 'https://github.com/TU-Berlin-SNET/sdl-ng'
  spec.license       = 'Apache-2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activesupport', '~> 4.2'
  spec.add_runtime_dependency 'nokogiri', '~> 1.6'
  spec.add_runtime_dependency 'verbs', '~> 2.1'
  spec.add_runtime_dependency 'rdf', '~> 1.1'
  spec.add_runtime_dependency 'rdf-rdfxml', '~> 1.1'
  spec.add_runtime_dependency 'multi_json', '~> 1.11'
  spec.add_runtime_dependency 'money', '~> 6.5'
  spec.add_runtime_dependency 'monetize', '~> 1.2'
  spec.add_runtime_dependency 'slim', '~> 3.0'

  spec.add_development_dependency 'yard', '~> 0.8.7'
  spec.add_development_dependency 'yard-redcarpet-ext', '~> 0.0.3'
  spec.add_development_dependency 'redcarpet', '~> 3.2'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'fuubar', '~> 2.0'
  spec.add_development_dependency 'simplecov', '~> 0.10'
end