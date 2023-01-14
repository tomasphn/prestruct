require_relative 'lib/prestruct/version.rb'
Gem::Specification.new do |spec|
  spec.name                  = 'prestruct'
  spec.version               = PreStruct::VERSION
  spec.authors               = ['Tomas Palpallatoc']
  spec.email                 = ['tomasphn@gmail.com']
  spec.summary               = 'Builds basic file structure for a ruby project'
  spec.description           = 'Generates the (semi-opinianated) basic file structure for a ruby project in users current directory. Currently only supports Sinatra projects.'
  spec.homepage              = 'https://github.com/tomasphn/prestruct'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.5.0'

  spec.add_runtime_dependency 'slop', '4.9.3'
  spec.add_development_dependency 'rake', '~> 13.0.0'
  spec.add_development_dependency 'rspec', '~> 3.0.0'

  spec.files = Dir.glob('{lib,bin}/**/*') + %w(LICENSE README.md CHANGELOG.md)
  spec.executables = ['prestruct']
end
