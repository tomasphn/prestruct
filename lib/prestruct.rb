require_relative 'prestruct/builders.rb'
require_relative 'prestruct/sinatra.rb'

module PreStruct
  class << self
    include SinatraStruct

    def sinatra_simple
      SinatraStruct::Base.new('big_project')
    end
  end
end

PreStruct.sinatra_simple

# sinatra_basic
=begin
  app
    routes.rb
    views
      view.erb
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

# Builders, helper module to make files/directories (seperate file)
#   Create and write file method(path, contents)
#   Create multiple directories(*paths)
#   Create common files

# include outside files
# Main application(module)
#   self block
#     include Sinatra module
#
#     method for each command/file type(maybe project type method with logic tree within
#                                       so sinatra("single") creates single file sinatra project)
#     sinatra single file
#     sinatra mvc
#     other project types

# Sinatra module (seperate file)
#   includes builders
#
#   Base class(single file)
#     initialize
#       set @root to project name
#       run construct project folder method
#
#     construct project folder method
#       create project folder (builder method, pass @root)
#       create app folder method (pass @root)
#         create app folder, and view folder within (builder method, pass @root)
#         put single rb file within app folder (builder method)
#         put 
#       create public folder method
#     
#   basic database << Base (inherits from base class)
#   mvc << Base
#   others..

# Other modules for each other project type