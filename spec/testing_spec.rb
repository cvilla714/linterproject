require 'colorize'
require './lib/open'
require './lib/checkcomments'

def silence
  # Store the original stderr and stdout in order to restore them later
  @original_stderr = $stderr
  @original_stdout = $stdout

  # Redirect stderr and stdout
  $stderr = $stdout = StringIO.new

  yield

  $stderr = @original_stderr
  $stdout = @original_stdout
  @original_stderr = nil
  @original_stdout = nil
end



RSpec.describe  'check if there are comments ' do
   let(:tome){CheckComments.new} 
   let(:comments){tome.comments}
   let(:clean){tome.comments()}
  
  
   context 'will check if there are comments' do
    it ' will check if there are comments ' do
      # tome = CheckComments.new
      # silence{expect(comments).to eq([2,3,4,12])}
      silence{expect(comments).to eq(comments[1])}
    end
  end
end

  # context 'will check if there are not comments' do
    # it 'will check if there are no comments'
    # silence {expect()
# end

RSpec.describe 'check if the file exists' do

  it ' will check if the file exists' do
    expect(File.exist?('./css/testing.css')).to eq(true)
  end
end
