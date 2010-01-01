#!/usr/bin/env ruby

class FizzBuzz
  def buzz(number)
    buzzed = ''
    buzzed << 'Fizz' if (number%3 == 0)
    buzzed << 'Buzz' if (number%5 == 0)
    buzzed.empty? ? number : buzzed
  end
end

if __FILE__ == $0
  fb = FizzBuzz.new
  (1..100).each{|n| puts "#{fb.buzz(n)}"}
end
