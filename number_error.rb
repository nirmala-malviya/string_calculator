class NumberError < StandardError
  def initialize(number)
    super("Negative numbers not allowed: #{number}")
  end
end