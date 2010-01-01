require '4'

describe DirectoryManipulator do
  BASE_DIR = `pwd`.chomp

  before :each do
    @dm = DirectoryManipulator.new
  end

  it 'should display your current working directory' do
    @dm.pwd.should == BASE_DIR
  end

  it 'should create a new directory tmp under your working directory' do
    File.exists?('tmp').should be_false
    @dm.mkdir('tmp')
    File.directory?('tmp').should be_true
  end

  it 'should change your working directory to tmp' do
    File.exists?('tmp').should be_true
    wd = BASE_DIR
    @dm.cd('tmp')
    @dm.pwd.should == "#{wd}/tmp"
  end

  it 'should display your current working directory' do
    @dm.pwd.should == "#{BASE_DIR}/tmp"
  end

  it 'should go back to your original directory' do
    @dm.cd(BASE_DIR)
    @dm.pwd.should == BASE_DIR
  end

  it 'should delete the tmp directory' do
    File.exists?('tmp').should be_true
    @dm.rmdir('tmp')
    File.exists?('tmp').should be_false
  end
end
