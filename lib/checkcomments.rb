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
        @errors.push("On line #{index + 1} you have this commented code #{line}".red)
      end
    end
    puts @errors
    @errors_array
  end
end

# comentarios = CheckComments.new
# puts comentarios.comments
# puts comentarios.displayarray
# puts comentarios.errors


