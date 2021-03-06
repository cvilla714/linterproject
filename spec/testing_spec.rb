require 'colorize'
require_relative '../lib/open'
require_relative '../lib/check_errors'
require_relative '../lib/no_errors'

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
  let(:comments) { tome.check }
  let(:clean) { NoErrors.new([';', '.']) }
  let(:period) { tome.check }
  let(:semi) { tome.find_semicolond }

  context 'will check if there are comments' do
    it ' will check if there are comments ' do
      silence { expect(comments).to eq(nil) }
    end
  end

  context 'will check for initial period' do
    it 'will check for the opening period' do
      silence { expect(period).not_to eq(true) }
    end
  end

  context 'checks for semicolon' do
    it 'will check if the lines is missing a semicolon' do
      silence do
        expect(semi).not_to eq(["\e[0;31;49mOn line 1 you are missing a semicolon\e[0m",
                                + "\e[0;31;49mOn line 2 you are missing a semicolon\e[0m"])
      end
    end
  end

  context 'checks if there are no errors' do
    it 'will check if the file has no errors' do
      silence { expect(clean.no_errors).to be_empty }
    end
  end
end

RSpec.describe 'check if the file exists' do
  it ' will check if the file exists' do
    expect(File.exist?('./css/testing.css')).to eq(true)
  end
end
