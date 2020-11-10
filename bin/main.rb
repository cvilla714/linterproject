require 'colorize'
require_relative '../lib/open'
require_relative '../lib/checkcomments'
readit = OpenTheFile.new(ARGV.first)
commnets = CheckComments.new(readit.open_the_file)
commnets.comments