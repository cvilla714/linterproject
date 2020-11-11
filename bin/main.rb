require 'colorize'
require_relative '../lib/open'
require_relative '../lib/checkcomments'
readit = OpenTheFile.new(ARGV.first)
commnets = CheckErrors.new(readit.open_the_file)
commnets.initialperiod
commnets.comments
puts commnets.findsemicolond
# puts commnets.noerrors
