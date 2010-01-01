require '8'

describe TextAnalyzer do
  before :each do
    @ta = TextAnalyzer.new('8.txt')
  end

  it 'should return a character count' do
    @ta.character_count.should == 6147
  end

  it 'should return a character count excluding spaces' do
    @ta.character_count_excluding_spaces.should == 5055
  end

  it 'should return a line count' do
    @ta.line_count.should == 121
  end

  it 'should return a word count' do
    @ta.word_count.should == 1100
  end

  it 'should return a sentence count' do
    @ta.sentence_count.should == 44
  end

  it 'should return a paragraph count' do
    @ta.paragraph_count.should == 18
  end

  it 'should return the average number of words per sentence' do
    @ta.words_per_sentence.should == 25.0
  end

  it 'should return the average number of sentences per paragraph' do
    @ta.sentences_per_paragraph.should == 44/18.0
  end
end
