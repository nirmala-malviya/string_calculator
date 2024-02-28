require_relative '../calculator'

describe Calculator do
  describe '#add' do
    context "when input is valid" do
      before do
        @calculator = Calculator.new
      end

      it 'returns zero if string is empty' do
        expect(@calculator.add("")).to eq(0)
      end

      it 'returns the sum of a single numbers string' do
        expect(@calculator.add("1")).to eq(1)
      end

      it 'returns the sum of two numbers' do
        expect(@calculator.add("1,5")).to eq(6)
      end
    end

    context "when input is invalid" do
      before do
        @calculator = Calculator.new
      end
      it 'raise the exception' do
        expect { @calculator.add("5, -3") }.to raise_error("Negative numbers not allowed: -3")
      end

      it 'return invalid input' do
        expect(@calculator.add("1,\n")).to eq("The following input is invalid: 1,\n")
      end

      it 'return invalid input' do
        expect(@calculator.add("1, \n")).to eq("The following input is invalid: 1,\n")
      end
    end
  end
end
