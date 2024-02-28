require_relative 'number_error'

class Calculator
  def add(string_val)
    # Empty string check
    return 0 if string_val.empty?

    addition_val = 0
    val_array = string_val.split(",")

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