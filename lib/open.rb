class OpenTheFile
  attr_reader :file

  def initialize(file)
    @file = file
  end

  def open_the_file
  file = File.open('./css/testing.css')
  file.readlines.map(&:chomp)
  end
end

# readingfile = OpenTheFile.new('./css/testing.css')
# puts readingfile.open_the_file.class
# puts readingfile.open_the_file
