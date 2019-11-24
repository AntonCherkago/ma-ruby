class Valid
  def valid_string?(str)
    if str.match "(\\[.+\\])" || "|(\\(\\))" || "|({})"
      return true
    else
      return false
    end
  end
end

puts valid_string?("[ ]")                  # returns true
puts valid_string?("[  ")                  # returns false
puts valid_string?("[ ( text ) {} ]")      # returns true
puts valid_string?("[ ( text { ) } ]")     # returns false