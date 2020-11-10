require 'colorize'
require './lib/open'
require './lib/checkcomments'



RSpec.describe  'check if there are comments ' do
    
  context 'will check if there are no comments' do
    it ' will check if there are no comments ' do
      tome = CheckComments.new
      expect(tome.comments).to be_empty
    end
  end
end

RSpec.describe 'check if the file exists' do

  it ' will check if the file exists' do
    expect(File.exist?('./css/testing.css')).to eq(true)
  end
end
