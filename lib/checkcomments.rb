require 'colorize'
# require './css/testing.css'
require_relative 'open'

class CheckComments
  attr_reader :errors, :errors_array

  def initialize
    # @sentence = sentence
    # @errors_array = []
    @errors= []
  end


  def comments

    read = OpenTheFile.new('./css/testing.css')
    read.open_the_file.each_with_index do |line,index|
      # puts "#{index},#{line}"
      if line.include?('/*')
      # if line.scan(%r{/\A\/\*/}) && line.scan(%r{/\*\/\z/})
        @errors.push[index+1]
        puts "You have commented lines on lines #{index}".red 
      end
    end
    @errors
  end
end

comentarios = CheckComments.new
puts comentarios.comments
# puts comentarios.errors


