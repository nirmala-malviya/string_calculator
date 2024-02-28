require_relative '../calculator'

describe Calculator do
  describe '#add' do
    it 'returns zero if string is empty' do
      calculator = Calculator.new
      expect(calculator.add("")).to eq(0)
    end
  end
end
