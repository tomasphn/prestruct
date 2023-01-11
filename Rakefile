require 'rake'

GEM_NAME = "prestruct"
GEM_VERSION = "0.1.0"

task :default => :install

desc 'build gem file'
task :build => :clean do
  system "gem build"
end

desc 'install built gem'
task :install => :build do
  system "gem install " + GEM_NAME + "-" + GEM_VERSION + ".gem"
end

desc 'publish built gem online'
task :publish => :build do
  system 'gem push ' + GEM_NAME + "-" + GEM_VERSION + ".gem"
end

desc 'delete built gem file'
task :clean do
  system "rm *.gem"
  system "rm -r project_name"
end
