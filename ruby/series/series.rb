=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end
class Series
  @number = ''
  
  def initialize(number)
    @number = number
  end

  def slices(digit)
    return raise ArgumentError if digit > @number.size
    list = []
    (0..@number.size).each_with_index do |index, next_index|
      if next_index+digit <= @number.size
        str = @number[index...next_index+digit]
        list.push(str)
      end
    end
    list
  end

end