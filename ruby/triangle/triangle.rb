=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end
class Triangle

  def initialize(array)
    @lines = array
  end

  def line_not_zero
    sum_line = 0
    @lines.each do |line| 
      return false if line == 0
      sum_line += line
    end
    return false if sum_line - @lines.max <= @lines.max
    true
  end

  def equilateral?
    return false unless line_not_zero
    return true if @lines[0] == @lines[1] and @lines[0] == @lines[2]
    false
  end

  def isosceles?
    return false unless line_not_zero
    return true if @lines[0] == @lines[1] || @lines[0] == @lines[2] || @lines[1] == @lines[2]
    false
  end

  def scalene?
    return false unless line_not_zero
    return true if !equilateral? && !isosceles?
    false
  end
end