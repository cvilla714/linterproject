require 'colorize'
require_relative '../lib/checkcomments'
readit = OpenTheFile.new(ARGV.first)



# file = File.open('./css/testing.css', 'r')
# puts file.readlines
# file.close

# commnets = CheckComments.new
# puts commnets.check_for_comments


# filenew = File.open('./css/testing.css')
# filenew.each_line.with_index { |item| p item}

# morefiles = File.open('./css/testing.css')
# morefiles.each_line.with_index do |i| 
    # i.each_char { |x| p x}
# 
# end
# puts 'Hello'.red