require_relative '../calculator'

describe Calculator do
  describe '#add' do
    it 'returns zero if string is empty' do
      calculator = Calculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the sum of a single numbers string' do
      calculator = Calculator.new
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add("1,5")).to eq(6)
    end

    it 'raise the exception' do
      calculator = Calculator.new
      # expect(calculator.add("1,-5")).to eq(6)
      expect { calculator.add("5, -3") }.to raise_error("Negative numbers not allowed: -3")
    end

    it 'return invalid input if string contain new line' do
      calculator = Calculator.new
      expect(calculator.add("1,\n")).to eq("The following input is invalid: 1,\n")
    end

    it 'return invalid input if string contain blank space' do
      calculator = Calculator.new
      expect(calculator.add("1, \n")).to eq("The following input is invalid: 1,\n")
    end
  end
end
