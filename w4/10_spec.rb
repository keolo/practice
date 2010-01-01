require '10'

describe ReverseWordOrder do
  before :each do
    @rs = ReverseWordOrder.new
    @string = "This string shall be reversed. O'hare was here!"
    @reversed_string = "!here was O'hare .reversed be shall string This"
  end

  it 'should reverse a string using String#split' do
    @rs.reverse(@string).should == @reversed_string
  end

  it 'should reverse a string by using String#scan' do
    @rs.reverse_scan(@string).should == @reversed_string
  end

  it 'should reverse a string by using String#each_char' do
    @rs.reverse_each_char(@string).should == @reversed_string
  end
end
