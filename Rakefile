require 'rake'
require_relative 'lib/prestruct/version.rb'

GEM_NAME = "prestruct"

task :default => :install

desc 'build gem file'
task :build => :clean do
  system "gem build"
end

desc 'install built gem'
task :install => :build do
  system "gem install " + GEM_NAME + "-" + PreStruct::VERSION + ".gem"
end

desc 'publish built gem online'
task :publish => :build do
  system 'gem push ' + GEM_NAME + "-" + PreStruct::VERSION + ".gem"
end

desc 'delete built gem file and built project directories'
task :clean do
  system "rm *.gem"
  system "rm -r *project*"
end
