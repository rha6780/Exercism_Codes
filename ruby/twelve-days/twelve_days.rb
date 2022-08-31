=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end
class TwelveDays 

  Day = {
    first: 'a Partridge in a Pear Tree.',
    second: 'two Turtle Doves',
    third: 'three French Hens',
    fourth: 'four Calling Birds',
    fifth: 'five Gold Rings',
    sixth: 'six Geese-a-Laying',
    seventh: 'seven Swans-a-Swimming',
    eighth: 'eight Maids-a-Milking',
    ninth: 'nine Ladies Dancing',
    tenth: 'ten Lords-a-Leaping',
    eleventh: 'eleven Pipers Piping',
    twelfth: 'twelve Drummers Drumming'
  }

  def self.song
    privious = ''
    result = ''
    Day.each do |key, value|
      words = ''
      if key == :first
        words = "#{value}\n"
        result += "On the #{key} day of Christmas my true love gave to me: #{words}"
      elsif key == :second
        words = "#{value}, and #{privious}"
        result += "\nOn the #{key} day of Christmas my true love gave to me: #{words}"
      else
        words = "#{value}, #{privious}"
        result += "\nOn the #{key} day of Christmas my true love gave to me: #{words}"
      end
      privious = words
    end
    result
  end
end