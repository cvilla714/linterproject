require 'colorize'
require_relative 'open'

class NoErrors
  attr_reader :errors, :errors_array

  def initialize(lines)
    @errors_array = []
    @errors = []
    @lines = lines
  end

  def no_errors
    period = /^\./
    message = ''
    @lines.each_with_index do |item, _index|
      message = 'NO Errors, file is Clean'.green if @lines[0].match(period) && item.include?(';')
    end
    message
  end
end
