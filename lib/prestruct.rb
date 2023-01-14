require_relative 'prestruct/builders.rb'
require_relative 'prestruct/sinatra.rb'

module PreStruct
  class << self
    include SinatraStruct

    def sinatra_simple(project_name)
      SinatraStruct::Base.new(project_name)
    end
  end
end

