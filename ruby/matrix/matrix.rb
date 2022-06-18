=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
  @row = []
  @column = []
  
  def initialize(matrix)
    @row = matrix.split("\n")
    @row.each_with_index do |row, index|
      @row[index] = row.split.map { |s| s.to_i }
    end
  end

  def rows
    @row
  end

  def columns
    @column = @row[0].map {|s| [] }
    @row.each do |row|
      row.each_with_index do |item, index|
        @column[index].push(item)
      end
    end
    @column
  end
end