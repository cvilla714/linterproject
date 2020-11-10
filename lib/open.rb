class OpenTheFile
  attr_reader :file

  def initialize(file)
    @file = file
    # @nofile =File.exists?
  end

  # def readfile_content
    # content = []
    # no_content = 0
    # File.open(@file) {|read| content = file.readlines.map(&:chomp)}
      # content.each_with_index do |lines,index|
        # puts lines
      # end
    # end

  

  
  
  def open_the_file
  file = File.open('./css/testing.css')
  file.readlines.map(&:chomp)
  end
end

# readingfile = OpenTheFile.new('./css/testing.css')
# puts readingfile.open_the_file.class
# puts readingfile.open_the_file
