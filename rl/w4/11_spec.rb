require '11'

describe Summarizer do
  before :each do
    @s = Summarizer.new
  end

  it 'should take an array of integers and return the sum of its elements' do
    @s.sum([1, 2, 3, 4, 5]).should == 15
  end

  it 'should take an array of integers and return the sum of its elements (alternate form)' do
    @s.sum_via_block([1, 2, 3, 4, 5]).should == 15
  end
end
