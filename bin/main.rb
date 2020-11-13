require 'colorize'
require_relative '../lib/open'
require_relative '../lib/check_errors'
require_relative '../lib/no_errors'
readit = OpenTheFile.new(ARGV.first)
commnets = CheckErrors.new(readit.open_the_file)
commnets.check
puts commnets.find_semicolond
clean = NoErrors.new(readit.open_the_file)
puts clean.no_errors
