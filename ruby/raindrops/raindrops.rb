=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops

  def self.convert(num)
    result = ""
    result = result +"Pling" if num%3==0
    result = result +"Plang" if num%5==0
    result = result +"Plong" if num%7==0

    result = "#{num}" if result == ""
    result
  end

end