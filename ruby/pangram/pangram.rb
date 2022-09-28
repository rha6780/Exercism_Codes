=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end
class Pangram

  def self.pangram?(sentence)
    sen = sentence.strip&.upcase
    result = true
    ('A'..'Z').each do |alpha_bet|
      result = sen.include?(alpha_bet)
      return false unless result
    end
    result
  end

end