require 'colorize'
# require './css/testing.css'
require_relative 'open'

class CheckComments
  attr_reader :errors, :errors_array

  def initialize(lines)
    # @sentence = sentence
    @errors_array = []
    @errors = []
    @lines = lines
  end

  def comments
    @lines.each_with_index do |line, index|
      if line.include?('/*')
        @errors_array.push(index + 1 )
        @errors.push("On line #{index + 1} you have this commented code #{line}".yellow)
      end
    end
    puts @errors
    @errors_array
  end



  def initialperiod
    period = /^\./
    unless @lines[0].match(period)
        @errors.push("On line 1 of your code you don't have a period".red)
    end
    @errors
  end

  # def findsemicolond



end

# comentarios = CheckComments.new(lines)
# puts comentarios.comments
# puts comentarios.initialperiod
# puts comentarios.displayarray
# puts comentarios.errors


