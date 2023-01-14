module FileContents
  class << self
    def css
      ["styles.css", "css here"]
    end
  
    def readme
      ["README.MD", "Description and installation instructions for project here"]
    end
  end

  module Sinatra
    class << self
      def gemfile
        ["Gemfile", "source 'https://rubygems.org'"]
      end
  
      def model
        ["model.rb", "# data management classes and code here"]
      end
  
      def view
        contents = <<~FILE
          <!--view content here-->
        FILE
        ["view.erb", contents]
      end
  
      def layout
        contents = <<~FILE
          <!doctype html>
          <html lang="en-US">
            <head>
              <title>Rec Analyzer</title>
              <meta charset="UTF-8">
              <link rel="stylesheet" type="text/css" href="<%= url('/stylesheets/styles.css') %>"> 
            </head>
            <body></body>
          </html>
        FILE
        ['layout.erb', contents]
      end
  
      def controller(project_name)
        contents = <<~FILE
          require 'sinatra'
          # view controller
          # routes go here
        FILE
        ["#{project_name}.rb", contents]
      end
  
      def config
        ["config.ru", "require 'route_to_controller'\nrun Sinatra::Application"]
      end

      def helpers
        ["helpers.rb", "# helper methods go here"]
      end

      def spec(project_name)
        ["#{project_name}_test.rb", "require 'route_to_controller'\n# tests for project go here"]
      end
    end
  end
end