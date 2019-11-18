a = File.open(ARGV[0], 'r')
a.each_with_index do |line, q|
  if line.chomp == ARGV[1]
    puts q + 1
    break
  end
end
