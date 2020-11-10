class ReadFile
  attr_reader :file, :realines
  attr_writer :comments

  def initialize(file)
    @file = file
    @readthefile = File.readlines(file)
    @comments = []
  end

  def check_comments
    @readthefile.each_with_index do |lines, _index|
      comments = lines.scan(%r{/\*\s\w+\D\s\w+\D\s\*/})
      puts 'hello' if comments == ['/*']
    end
  end

  puts check_comments
end
