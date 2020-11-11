require 'colorize'
require_relative '../lib/open'
require_relative '../lib/checkcomments'
require_relative '../lib/noerrors'
readit = OpenTheFile.new(ARGV.first)
commnets = CheckErrors.new(readit.open_the_file)
commnets.initialperiod
commnets.comments
puts commnets.findsemicolond
noerrors = NoErrors.new(readit.open_the_file)
puts noerrors.noerrors
