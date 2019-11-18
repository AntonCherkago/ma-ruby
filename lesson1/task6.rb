class Calculator

  attr_accessor :int

  def initialize(int)
    @int = int
  end

  def sum
    operate_on_two_numbers(:+)
  end

  def difference
    operate_on_two_numbers(:-)
  end

  def division
    operate_on_two_numbers(:*)
  end

  def multiplication
    operate_on_two_numbers(:/)
  end
end

a = Calculator.new(ARGV[0])
b = Calculator.new(ARGV[1])

puts a+b
puts a-b
puts a*b
puts a/b

