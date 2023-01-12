module Builders
  def create_routes(path)
    contents = <<~FILE
      require 'sinatra'
      # routes go here
    FILE
    rw_file(path, contents)
  end

  def create_view(path)
    contents = <<~FILE
      <!--html here-->
    FILE
    rw_file(path, contents)
  end

  def create_css(path)
    contents = <<~FILE
      css content insert later
    FILE
    rw_file(path, contents)
  end

  def create_configs(root)
    rw_file(@root + "/config.ru", "require './app/#{root}'\nrun Sinatra::Application")
    rw_file(@root + "/Gemfile", "source 'https://rubygems.org'")
    rw_file(@root + "/README.md", "Description and installation instructions for project here")
  end

  def rw_file(path, contents = "")
    File.open(path, "w+") do |f|
      f.write contents
    end
  end
  
  def create_dirs(*paths)
    paths.each do |path|
      Dir.mkdir(path)
    end
  end
end