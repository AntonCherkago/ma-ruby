require 'colorize'

f = File.open(ARGV[1], 'r')
puts (f.read).colorize(ARGV[0].to_sym)
