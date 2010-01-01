#!/usr/bin/env ruby

class DeafGrandma
  attr_accessor :message

  def reply
    case @message
      when 'BYE'
        'BYE SONNY!'
      when @message.upcase
        "NO, NOT SINCE #{1930+rand(21)}!"
      else
        'HUH?! SPEAK UP, SONNY!'
    end
  end
end

class DeafGrandmaRunner
  def initialize
    @dg = DeafGrandma.new
  end

  def run
    puts "Greet your Grandma or say 'BYE' to go home."
    loop do
      print 'You: '
      msg = gets.chomp
      @dg.message = msg
      puts "Grandma: #{@dg.reply}"
      break if msg == 'BYE'
    end
  end
end

if __FILE__ == $0
  dgr = DeafGrandmaRunner.new
  dgr.run
end
