require 'colorize'
require_relative '../lib/open'
require_relative '../lib/check_errors'
require_relative '../lib/no_errors'
readit = OpenTheFile.new(ARGV.first)
commnets = CheckErrors.new(readit.open_the_file)
# commnets.initialperiod
commnets.check
# commnets.comments
puts commnets.find_semicolond
# noerrors = NoErrors.new(readit.open_the_file)
clean = NoErrors.new(readit.open_the_file)
puts clean.no_errors
