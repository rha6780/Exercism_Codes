=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end
class Squares

  def initialize(num)
    @array = (1..num)
  end

  def square_of_sum
    sum = @array.sum
    sum*sum
  end

  def sum_of_squares
    sum = 0
    @array.each do |num|
      sum+=num*num
    end
    sum
  end

  def difference
    (sum_of_squares - square_of_sum).abs
  end
end