#!/usr/bin/env ruby

=begin
  Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates
  the sum of its elements.
=end

class Summarizer
  def sum(numbers)
    numbers.reduce(:+)
  end

  def sum_via_block(numbers)
    numbers.inject{|sum, n| sum + n}
  end
end
