#!/usr/bin/env ruby

class FileManipulator
  attr_reader :orig_filename

  def initialize(orig_filename)
    @orig_filename = orig_filename
  end

  def lines
    f = File.new(@orig_filename)
    f.readlines
  end

  def replace_word(orig_str, new_str, new_filename)
    File.open(new_filename, 'w') do |f|
      lines.each do |l|
        f.puts l.gsub(orig_str, new_str)
      end
    end
  end
end

if __FILE__ == $0
  print 'Enter filename: '
  fm = FileManipulator.new(gets.chomp)
  fm.replace_word('word', 'inserted word', '3_new.txt')
  puts 'Word has been replaced.'
end
