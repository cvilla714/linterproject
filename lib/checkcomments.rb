require 'colorize'
# require './css/testing.css'
require_relative 'open'

class CheckComments
  attr_reader :errors, :errors_array

  def initialize
    # @sentence = sentence
    @errors_array = []
    @errors= []
  end


  def comments
    index_array =[]
    read = OpenTheFile.new('./css/testing.css')
    read.open_the_file.each_with_index do |line,index|
    @errros_array= read.open_the_file.each_with_index do |line,index|
    # @errros_array= read.readfile_content.each_with_index do |line,index|
      # puts "#{index},#{line}"
      if line.include?('/*')
      # if line.scan(%r{/\A\/\*/}) && line.scan(%r{/\*\/\z/})
      index_array.push(index+1) 
      @errors.push("On line #{index+1} you have this commented code #{line}".red)
        # puts "You have commented lines on lines #{index}".red 
      end
    end
    @errors
    # index_array
    
  end

  # def displayarray
    # include comments
    # index_array
  end

end

comentarios = CheckComments.new
puts comentarios.comments
# puts comentarios.displayarray
# puts comentarios.errors


