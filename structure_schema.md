* Files Structures * 
# sinatra_basic
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

# sinatra_mvc
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
  spec - rspec test suites for each file type?
    controllers
    features
    models
    spec_helper.rb

* OOP Structure *
Folders class
 Manages folder and file objects
 Creates folders and files with create method

Sinatra builder class
  Holds logic for what types of files each sinatra projet needs
  Base class with base layout
    Project name set on initialization
    Builds folders
      Creates Folder object with project name
      adds app directory to it
        adds all files into app dir
      creates public dir
        adds all files into public dir
      adds all loose files into project dir
    runs Folder#create on specified folder

  MVC class inherits from base class

Regular Files module/class database type
  Contents and names for general file types
    css
    readme
Sinatra Files module/class < Regular Files
  Contents and names for sinatra file types
    Gemfile
    model
    view
    controller
    config.ru

other files to add?
  .gitignore
  Rakefile
  rubocop.yml

  License for gem