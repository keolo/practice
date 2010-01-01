#!/usr/bin/env ruby

=begin
  Write a Ruby program (p021oddeven.rb) that, when given an array:
  collection = [12, 23, 456, 123, 4579] prints each number, and tells you whether it
  is odd or even.
=end

class OddEven
  def process_collection(numbers)
    a = numbers.map do |n|
      n%2 == 0 ? [n, :even] : [n, :odd]
    end
  end

  def process(number)
    number%2 == 0 ? :even : :odd
  end
end
