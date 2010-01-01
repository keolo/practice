#!/usr/bin/env ruby

=begin
  Write a Ruby program (p021oddeven.rb) that, when given an array:
  collection = [12, 23, 456, 123, 4579] prints each number, and tells you whether it
  is odd or even.
=end

class OddEven
  def process_collection(numbers)
    a = numbers.map do |n|
      raise ArgumentError, 'Argument is not an integer' unless n.is_a?(Integer)
      n%2 == 0 ? [n, :even] : [n, :odd]
    end
  end

  def process(number)
    raise ArgumentError, 'Argument is not an integer' unless number.is_a?(Integer)
    number%2 == 0 ? :even : :odd
  end
end

if __FILE__ == $0
  print 'Enter a list of numbers to test if they are odd or even: '
  oe = OddEven.new
  numbers = gets.chomp.split.map(&:to_i)

  puts 'First usage:'
  oe.process_collection(numbers).each{|r| puts "#{r.first} is #{r.last}"}

  puts 'Alternate usage:'
  numbers.each{|n| puts "#{n} is #{oe.process(n)}"}
end
