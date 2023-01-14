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
      "inner mod"
    end

    module_function :getter
  end
end

class Bang
  include Outer
  include Outer::Inner
  def call_reg
    puts reg_mod_method
  end

  def call_innr
    puts innr_mod_method
  end
end

Bang.new.call_reg
Bang.new.call_innr