require_relative 'builders.rb'
module SinatraStruct
  class Base
    include Builders
    def initialize(project_name)
      @root = project_name
      construct
    end

    def construct
      create_dirs(@root)
      build_app_dir
      build_public_dir
      create_configs(@root)
    end

    private

    def build_app_dir
      create_dirs(@root + "/app", @root + "/app/views")
      create_routes(@root + "/app/#{@root}.rb")
      create_view(@root + "/app/views/view.erb")
    end

    def build_public_dir
      create_dirs(@root + "/public", @root + "/public/stylesheets")
      create_css(@root + "/public/stylesheets/styles.css")
    end
  end

  class Mvc < Base
  end
end