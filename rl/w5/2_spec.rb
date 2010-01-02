require '2'

describe Rectangle do
  before :each do
    @r = Rectangle.new(23.45, 34.67)
  end

  it 'should calculate an area given two sides' do
    @r.area.should == 23.45 * 34.67
  end

  it 'should calculate a perimeter given two sides' do
    @r.perimeter.should == 2 * (23.45 + 34.67)
  end
end
