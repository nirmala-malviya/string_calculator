require_relative 'number_error'

class Calculator
  def add(string_val)
    # Empty string check
    return 0 if string_val.empty?

    string_val = string_val.gsub(' ', '')
    return "The following input is invalid: #{string_val}" if (string_val.include? (",\n")) || (string_val.include? ("\n,"))

    addition_val = 0
    # Input string split by new lines and commas
    val_array = string_val.split(/[\n,]/)

    val_array.each do |val|
      val = val.to_i
      # Check for if number is negative
      raise NumberError.new(val) if val < 0
      # Addition of numbers
      addition_val = addition_val + val
    end
    addition_val       
  end
end