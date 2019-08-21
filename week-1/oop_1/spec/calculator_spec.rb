require 'calculator'

describe 'Calculator' do
  describe '#add' do
    it 'adds two numbers' do
      expect(Calculator.new.add(2, 3)).to eq 5
      expect(Calculator.new.add(6, 4)).to eq 10
      expect(Calculator.new.add(0, 0)).to eq 0
      expect(Calculator.new.add(-1, -1)).to eq -2
      expect(Calculator.new.add(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(Calculator.new.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      expect(Calculator.new.subtract(3, 2)).to eq 1
      expect(Calculator.new.subtract(6, 4)).to eq 2
      expect(Calculator.new.subtract(0, 0)).to eq 0
      expect(Calculator.new.subtract(-1, -1)).to eq 0
      expect(Calculator.new.subtract(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(Calculator.new.subtract(Float::INFINITY, Float::INFINITY)).to be_nan
    end
  end

  describe '#print_answer' do
    it 'pretty prints the answer' do
      expect(Calculator.new.print_answer(4)).to eq "The Answer is: 4"
      expect(Calculator.new.print_answer(6)).to eq "The Answer is: 6"
      expect(Calculator.new.print_answer(-1)).to eq "The Answer is: -1"
      expect(Calculator.new.print_answer(0)).to eq "The Answer is: 0"
      expect(Calculator.new.print_answer(Float::INFINITY)).to eq "The Answer is: Infinity"
    end
  end
end
