=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end
class Isogram
  def self.isogram?(input)
    return true if input == ""
    count = {}
    input = input.downcase
    input.split('').each do |w|
      if count[w].nil?
        count[w] = 1
      elsif w != '-' and w != ' '
        return false
      end
    end
    input
  end
end