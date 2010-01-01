require '12'

describe OddEven do
  before :each do
    @oe = OddEven.new
    @array = [12, 23, 456, 123, 4579]
  end

  it 'should take an array and return each number telling you whether it is odd or even' do
    @oe.process_collection(@array).should == [
      [12, :even],
      [23, :odd],
      [456, :even],
      [123, :odd],
      [4579, :odd],
    ]
  end

  it 'should support an alternate usage' do
    @array.map do |n|
      @oe.process(n)
    end.should == [:even, :odd, :even, :odd, :odd]
  end
end
