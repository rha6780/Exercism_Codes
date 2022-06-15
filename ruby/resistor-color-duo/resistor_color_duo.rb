=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
class ResistorColorDuo
  COLOR_VALUES = %w[black brown red orange yellow green blue violet grey white]
  
  def self.value(values)
    result = ("#{COLOR_VALUES.find_index(values[0])}#{COLOR_VALUES.find_index(values[1])}").to_i
  end
end