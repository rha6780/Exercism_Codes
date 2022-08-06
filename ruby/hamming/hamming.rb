=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class Hamming

  def initialize
  end

  def self.compute(a, b)
    hamming_count = 0
    if a.length != b.length
      return raise ArgumentError
    end
    (0..a.length).each do |index|
      if a[index] != b[index]
        hamming_count = hamming_count + 1
      end
    end
    hamming_count
  end
  
end