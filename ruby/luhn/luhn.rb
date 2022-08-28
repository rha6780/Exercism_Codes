=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end
class Luhn
  def self.valid? (str)
    sum = 0
    nums = str.delete(' ').split('').reverse
    return false if nums.size < 2
    nums.map.with_index do |nn, i|
      n = nn.to_i
      return false if nn.match(/\D/)
      if i % 2 == 1
        n *= 2
        n -= 9 if n > 9
        sum += n
      else
        sum += n
      end
    end
    pp sum
    if sum % 10 == 0
      return true
    end
    false
  end
end
