require 'colorize'
# require './css/testing.css'
require_relative 'open'

class CheckErrors
  attr_reader :errors, :errors_array

  def initialize(lines)
    @errors_array = []
    @errors = []
    @lines = lines
  end

  def comments
    @lines.each_with_index do |line, index|
      if line.include?('/*')
        @errors_array.push(index + 1)
        @errors.push("On line #{index + 1} you have this commented code #{line}".yellow)
      end
    end
    @errors
    @errors_array
  end

  def initialperiod
    period = /^\./
    @errors.push("On line 1 of your code you don't have a period".red) unless @lines[0].match(period)
    @errors
  end

  def findsemicolond
    @lines.each_with_index do |item, index|
      unless item.delete(' ').include?('{') || item.delete(' ').include?('}') || item =~ /\A\s*\Z/ || item.include?(';')
        @errors.push("On line #{index + 1} you are missing a semicolon".red)
      end
    end
    @errors
  end
end

