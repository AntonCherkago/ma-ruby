class ArraySelection

  def initialize(my_arr)
    @my_arr = my_arr
  end

  def even_selector
    @my_arr.find_all { |elem| (str_to_i(elem) % 2) == 0 }
  end

  def str_to_i(item)
    item.to_s.to_i if item.to_s == item.to_s.to_i.to_s
  end
end

b = ArraySelection.new([1, 3, 2, '6', 10, '42'])
p b.even_selector
