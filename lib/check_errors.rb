require 'colorize'
require_relative 'open'

class CheckErrors
  attr_reader :errors, :errors_array

  def initialize(lines)
    @errors_array = []
    @errors = []
    @lines = lines
  end

  private

  def comments
    @lines.each_with_index do |line, index|
      if line.include?('/*')
        @errors_array.push(index + 1)
        @errors.push("On line #{index + 1} you have this commented code #{line}".yellow)
      end
    end
    @errors_array
  end

  def initial_period
    period = /^\./
    if @lines[0].match?(/\{/) && !@lines[0].match(period)
      @errors.push("On line 1 of your code you don't have a period".red)
    end
    @errors
  end

  def looking_for_empty_spaces
    empty_spaces = /\A\s+/
    if @lines[0].match?(empty_spaces)
      @errors.push('On line 1 Please remove the extra empty spaces you have at the beginning '.red)
    end
    @errros
  end

  public

  def check
    initial_period
    comments
    looking_for_empty_spaces
  end

  def find_semicolond
    @lines.each_with_index do |item, index|
      unless item.delete(' ').include?('{') || item.delete(' ').include?('}') || item =~ /\A\s*\Z/ || item.include?(';')
        @errors.push("On line #{index + 1} you are missing a semicolon".yellow)
      end
    end
    @errors
  end
end
