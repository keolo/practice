require '5'

describe DeafGrandma do
  before :each do
    @dg = DeafGrandma.new
  end

  it 'should ask to speak up if input is not all caps' do
    @dg.message = 'Hello grandma.'
    @dg.reply.should == 'HUH?! SPEAK UP, SONNY!'
  end

  it 'should reply "NO, NOT SINCE 1938!" if input is all caps' do
    @dg.message = 'HELLO GRANDMA.'
    @dg.reply.should match /NO, NOT SINCE 19[0-9]{2}!/
  end

  # Hmmm. I'm not sure how to test the implementation.
  it 'should not exit unless input is "BYE"' do
    messages = ['How are you grandma?', 'SUP GRAnNY?', 'bye', 'BYE', 'AAAAAA NEVER SEE THIS']
      messages.sort.reverse.each do |m|
        break if m == 'BYE'
        @dg.message = m
        @dg.reply
        messages.delete(m)
      end
    messages.should include 'AAAAAA NEVER SEE THIS'
  end
end
