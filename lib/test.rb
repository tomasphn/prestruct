module Extra
  def jim
    puts "jim"
  end
end
module Test
  class << self
    def gen
      "hello"
    end

    def dit
      Clas.hello
    end
  end


  class Clas
    class << self
      include Extra
      def hello
        puts Test.gen  # does not need an include
        jim
      end
    end
  end
end

Test.dit