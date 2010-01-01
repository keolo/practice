require '13'

describe Quiz do
  before :each do
    @q = Quiz.new
    @q.attempts = [0,0,0,1,0,0,1,1,0,1]
  end

  it 'should count the number of students who have not attempted the quiz' do
    @q.not_attempted_count.should == 6
  end

  it 'should count the total number of attempts' do
    @q.attempts.size.should == 10
  end
end
