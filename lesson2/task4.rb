class Calculator
  attr_accessor :numbers, :value
  def initialize
    @numbers = []
    @value = nil
  end

  def push(number)
    @numbers.push(number)
  end

  def plus
    operate_on_two_numbers {|a,b| a + b}
  end

  def minus
    operate_on_two_numbers {|a,b| b - a}
  end

  def times
    operate_on_two_numbers {|a,b| a * b}
  end

  def divide
    operate_on_two_numbers {|a,b| Float(b)/Float(a)}
  end

  private

  def operate_on_two_numbers(&prc)
    if @numbers.empty?
      raise "calculator is empty"
    else
      number1=@numbers.pop
      if @value.nil?
        number2=@numbers.pop
        @value = prc.call(number1,number2)
      else
        @value = prc.call(number1,@value)
      end
    end
  end
end