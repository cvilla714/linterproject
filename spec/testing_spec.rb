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

RSpec.describe 'check if there are comments ' do
  let(:tome) { CheckErrors.new(['/*', '/*']) }
  let(:comments) { tome.comments }
  let(:clean) { comments('./css/nobugs.css') }
  let(:period) { tome.initialperiod }

  context 'will check if there are comments' do
    it ' will check if there are comments ' do
      silence { expect(comments).to eq([1, 2]) }
    end
  end

  context 'will check for initial period' do
    it 'will check for the opening period' do
      silence { expect(period).not_to eq(true) }
    end
  end
end

RSpec.describe 'check if the file exists' do
  it ' will check if the file exists' do
    expect(File.exist?('./css/testing.css')).to eq(true)
  end
end
