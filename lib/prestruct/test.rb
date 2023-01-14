module Outer
  class << self
    def tester
      "hello"
    end
  end
  
  def reg_mod_method
    "reg mod"
  end

  module Inner
    def getter
      "got"
    end

    def innr_mod_method
      "reg mod"
    end

    module_function :getter
  end
end


puts Outer::Inner.getter
puts Outer.tester