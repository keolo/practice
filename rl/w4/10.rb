#!/usr/bin/env ruby

=begin
  Given a string, let us say that we want to reverse the word order (rather than
  character order). You can use String.split, which gives you an array of words. The
  Array class has a reverse method; so you can reverse the array and use join to make a
  new string. Write this program.
=end

class ReverseWordOrder
  def reverse(string)
    reversed_words = string.split.reverse
    reverse_punctuation(reversed_words).join(' ')
  end

  def reverse_scan(string)
    reversed_words = string.scan(/\S+/).reverse
    reverse_punctuation(reversed_words).join(' ')
  end

  def reverse_each_char(string)
    words = []
    str = ''
    i = 1
    string.each_char do |c|
      if c == ' ' or i == string.size
        str << c unless c == ' '
        words << str
        str = ''
      else
        str << c
      end
      i += 1
    end
    reverse_punctuation(words.reverse).join(' ')
  end

  def reverse_punctuation(words)
    word_list = []
    words.each do |w|
      if w =~ /[.!?]$/
        c = w.chars.to_a
        c = c.values_at(-1, 0..(c.size-2))
        word_list << c.to_s
      else
        word_list << w
      end
    end
    word_list
  end
end

if __FILE__ == $0
  rs = ReverseWordOrder.new
  print 'Please enter a string to be reversed: '
  puts rs.reverse(gets.chomp)
end
