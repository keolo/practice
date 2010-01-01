#!/usr/bin/env ruby

class TextAnalyzer
  def initialize(filename = '8.txt')
    @filename = filename
    @lines = File.open(@filename, 'r').readlines
    @line  = @lines.to_s.gsub(/\n|\r|\t|\f/, '')
  end

  def character_count
    @line.size
  end

  def character_count_excluding_spaces
    @line.gsub(' ', '').size
  end

  def line_count
    @lines.size
  end

  def word_count
    @line.gsub(/'|--/, '').split(/\W+/).size
  end

  def sentence_count
    @line.split(/[.?!]/).size
  end

  def paragraph_count
    @lines.to_s.split(/\n{2}|\r\n{2}|\n\r{2}/).size
  end

  def words_per_sentence
    word_count / sentence_count.to_f
  end

  def sentences_per_paragraph
    sentence_count / paragraph_count.to_f
  end
end

if __FILE__ == $0
  print 'Enter filename: '
  ta = TextAnalyzer.new(gets.chomp)
  puts "#{ta.character_count} Characters"
  puts "#{ta.character_count_excluding_spaces} Characters (without spaces)"
  puts "#{ta.line_count} Lines"
  puts "#{ta.word_count} Words"
  puts "#{ta.sentence_count} Sentences"
  puts "#{ta.paragraph_count} Paragraphs"
  puts "#{ta.words_per_sentence} Words per Sentence"
  puts "#{ta.sentences_per_paragraph} Sentences per Paragraph"
end
