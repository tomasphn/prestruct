require_relative 'folder.rb'
require_relative 'contents.rb'

module SinStruct
  class Base
    include FileContents
    include FileContents::Sinatra
  
    # Considering making entire class class methods
    def initialize(project_name)
      @project_name = project_name
      construct
    end

    private

    def construct
      # create folder object with name
      @root = Folder.new(@project_name)
      # create app dir > add all files to it
      build_app
      # create public dir > add all files
      build_public
      # add loose files to folder
      add_loose_files
      # create folder
      @root.create
    end

    def build_app
      @app = @root.add_folder("app")
      @app.add_files(Sinatra.controller(@root))
      build_views
    end

    def build_views
      @views = @app.add_folder("views")
      @views.add_files(Sinatra.view, Sinatra.layout)
    end

    def build_public
      @public = @root.add_folder("public")
      @public.add_files(FileContents.css)
    end

    def add_loose_files
      @root.add_files(Sinatra.config, Sinatra.gemfile, FileContents.readme)
    end
  end

  class Mvc < Base

  end
end
