class Colorize
  COLOR_KINDS = { red: 31, green: 32, yellow: 33, blue: 34,
                  pink: 35, light_blue: 36, gray: 37 }

  def initialize(text)
    @text = text
  end

  COLOR_KINDS.keys.each do |color|
    define_method(color) do
      color_cast = COLOR_KINDS[color]
      puts "\e[#{color_cast}m#{@text}\e[0m"
    end
  end
end

puts 'Enter some text'
text = gets.chomp
puts 'Choose color of text'
color = gets.chomp

Colorize.new(text).send(color)
