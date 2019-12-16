class Calculator
  attr_reader :int

  MATH_SIGNS = %i[+ - * /]

  def initialize(int)
    @int = int.to_i
  end

  MATH_SIGNS.each do |math_action|
    define_method(math_action) do |var|
      @int.send(math_action, var.int)
    end
  end
end

c = Calculator.new(8)
d = Calculator.new(4)

puts c + d, c - d, c * d, c / d
