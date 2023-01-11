Gem::Specification.new do |spec|
  spec.name                  = 'prestruct'
  spec.version               = '0.1.0'
  spec.authors               = ['Tomas Palpallatoc']
  spec.email                 = ['tomasphn@gmail.com']
  spec.summary               = "Builds basic file structure for a ruby project"
  spec.description           = "Generates the (semi-opinianated) basic file structure for a ruby project in users current directory. Currently only supports Sinatra projects."
  spec.homepage              = 'https://github.com/tomasphn?tab=repositories'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.5.0'

  spec.files = Dir.glob("{lib,bin}/**/*")
  spec.executables = ['prestruct']
end
