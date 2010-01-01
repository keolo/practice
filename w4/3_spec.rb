require '3'

describe 'Reading and writing to a file' do
  it 'should read a file and return an array where each line becomes an element' do
    fm = FileManipulator.new('3.txt')
    fm.lines.should be_a_kind_of(Array)
  end

  it 'should read a test file with one word that is different' do
    text = <<-TEXT.gsub(/^ {6}/, '')
      test test test test test
      test test test test test
      test test test test test
      test test test test test
      test test test test test
      test test word test test
      test test test test test
      test test test test test
      test test test test test
      test test test test test
      test test test test test
    TEXT

    File.open('3.txt', 'r').read.should == text
  end

  it 'should create a new file where the test word is replaced' do
    text = <<-TEXT.gsub(/^ {6}/, '')
      test test test test test
      test test test test test
      test test test test test
      test test test test test
      test test test test test
      test test inserted word test test
      test test test test test
      test test test test test
      test test test test test
      test test test test test
      test test test test test
    TEXT

    fm = FileManipulator.new('3.txt')
    fm.replace_word('word', 'inserted word', '3_new.txt')

    File.open('3_new.txt', 'r').read.should == text
  end
end
