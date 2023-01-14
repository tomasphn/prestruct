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
      build_loose_files
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

    def build_loose_files
      @root.add_files(Sinatra.config, Sinatra.gemfile, FileContents.readme)
    end
  end

  class Mvc < Base
    def construct
      @root = Folder.new(@project_name)
      build_app
      build_public
      build_specs
      build_loose_files
      @root.create
    end

    private

    def build_app
      @app = @root.add_folder("app")
      build_models
      build_controller
      build_views
      build_helpers
    end

    def build_models
      @models = @app.add_folder("models")
      @models.add_files(Sinatra.model)
    end

    def build_controller
      @controllers = @app.add_folder("controllers")
      @controllers.add_files(Sinatra.controller(@root))
    end

    def build_helpers
      @helpers = @app.add_folder("helpers")
      @helpers.add_files(Sinatra.helpers)
    end

    def build_specs
      @specs = @app.add_folder("specs")
      @specs.add_files(Sinatra.spec(@root))
    end
  end
end
