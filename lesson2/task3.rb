#class Array
#  def even_selector
#    values_at(* each.select(&:even?))
#  end
#end

#a = Array(ARGV[0])
#puts a.even_selector

class Array
  def even_selector
    ARGV.each do |n|
      if n.even?

      end
    end
  end
end

a = Array.new
