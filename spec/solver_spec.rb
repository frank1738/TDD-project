require './solver'

describe Solver do
  context 'test solver class' do # rubocop:disable Metrics/ClassLength
    solver = Solver.new
    it 'test factorial of  a number 5 should return 120' do
      number_factorial = solver.factorial(5)
      expect(number_factorial).to eq 120
    end

    it 'test for factorial of 0 should return 1' do
      number_zero = solver.factorial(0)
      expect(number_zero).to eq 1
    end

    it 'test for factorial of -5 should raise invalid input ' do
      solver = Solver.new
      expect { solver.factorial(-5) }.to raise_error(StandardError, 'Number is negative')
    end

    it 'test reverse of the word hello should return olleh' do
      number_reverse = solver.reverse('hello')
      expect(number_reverse).to eq 'olleh'
    end

    it 'test for divisibility by 3 should return fizz' do
      number_three = solver.fizzbuzz(9)
      expect(number_three).to eq 'Fizz'
    end

    it 'test for divisibility by 5 should return buzz' do
      number_five = solver.fizzbuzz(10)
      expect(number_five).to eq 'Buzz'
    end

    it 'test for divisibility by 3 and 5 should return fizzbuzz' do
      number_three_five = solver.fizzbuzz(15)
      expect(number_three_five).to eq 'FizzBuzz'
    end

    it "test any case of 2 should return '2' " do
      any_case = solver.fizzbuzz(2)
      expect(any_case).to eq '2'
    end
  end
end
