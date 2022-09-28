=begin
Write your code for the 'Leap' exercise in this file. Make the tests in
`leap_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/leap` directory.
=end
class Year

  def self.leap?(year)
    if year % 4 == 0 && ((year % 100 != 0) || (year % 100 == 0 && year % 400 == 0))
      return "Expected 'true', #{year} is a leap year."
    end
    rescue false, "Expected 'false', #{year} is not a leap year."
  end
end