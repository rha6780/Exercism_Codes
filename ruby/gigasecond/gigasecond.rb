=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end
class Gigasecond

  def self.from(gigasecond)
    date = gigasecond.to_i + 1000000000
    Time.at(date)

  end

end