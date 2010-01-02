#!/usr/bin/env ruby

=begin
  Write a Rectangle class. I shall use your class as follows:

  r = Rectangle.new(23.45, 34.67)
  puts 'Area is = ' + r.area().to_s
  puts 'Perimeter is = ' + r.perimeter.to_s
=end

class Rectangle
  def initialize(side_a, side_b)
    @side_a = side_a
    @side_b = side_b
  end

  def area
    @side_a * @side_b
  end

  def perimeter
    2 * (@side_a + @side_b)
  end
end

if __FILE__ == $0
  r = Rectangle.new(23.45, 34.67)
  puts 'Area is = ' + r.area().to_s
  puts 'Perimeter is = ' + r.perimeter.to_s
end
