module Builders
  def rw_file(path, contents)
    File.open(path, "w+") do |f|
      f.write contents
    end
  end
end

module PreStruct
  class << self
    def sinatra_single
      Dir.mkdir("project_name")
      SinatraAppStruct.single_file("project_name/")
    end
  end

  class SinatraAppStruct
    class << self
      include Builders
      def single_file(path)
        Dir.mkdir(path + "app")
        contents = <<~FILE
          require 'sinatra'
          # routes go here
        FILE
        rw_file(path + "app/app.rb", contents)
    
        Dir.mkdir(path + "app/views")
        contents2 = <<~FILE
          <!--html here--> 
        FILE
        rw_file(path + "app/views/view.erb", contents2)
      end
    end
  end
end


# sinatra_basic
=begin
  app
    routes.rb
    model.rb
    views
      view.erb
      layout.erb
  public
    stylesheets
      styles.css
  config.ru
  Gemfile
  README.md
=end

# sinatra_mvc
=begin
  Gemfile
  README.md
  app
    models
      model.rb - has app logic, ruby classes
    controller
      app_controller.rb - has routes
    views
      view.erb - erb view
      layout.erb - erb layout
    helpers
      helpers.rb
  config.ru
  public
    stylesheets
      styles.css
  config - for setting enviromental configs?
    enviroment.rb
  spec - rspec test suites for each file type?
    controllers
    features
    models
    spec_helper.rb
=end

# Builders to make files/directories helpers module(seperate file)

# Main application(module)
#   self block
#     method for each command
#       sinatra single file
#       sinatra mvc

# Sinatra module (seperate file?)
#   Base class