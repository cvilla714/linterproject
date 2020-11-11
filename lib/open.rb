class OpenTheFile
  attr_reader :file

  def initialize(file)
    @file = file
  end

  def open_the_file
    lines = []
    File.open(@file, 'r') { |file| lines = file.readlines.map(&:chomp) }
    lines
  end
end

# readingfile = OpenTheFile.new('./css/testing.css')
# puts readingfile.open_the_file.class
# puts readingfile.open_the_file
