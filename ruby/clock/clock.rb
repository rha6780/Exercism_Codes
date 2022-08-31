=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end
class Clock
  attr_reader :hour, :minute
  
  def initialize(hour:0, minute:0)
    @hour = convert_hour(hour, minute)
    @minute = convert_minute(minute)
    self
  end

  def to_s
    m = convert_minute(@minute)
    h = convert_hour(@hour, @minute)
    
    hh = h.to_s.length < 2 ? "0" + h.to_s : h.to_s
    mm = m.to_s.length < 2 ? "0" + m.to_s : m.to_s
    "#{hh}:#{mm}"
  end

  def +(clock)
    hour = @hour + clock.hour
    min = @minute + clock.minute
    @hour = convert_hour(hour, min)
    @minute = convert_minute(min)
    self
  end

  def -(clock)
    hour = @hour - clock.hour
    min = @minute - clock.minute
    @hour = convert_hour(hour, min)
    @minute = convert_minute(min)
    self
  end

  def ==(clock)
    return true if @hour == clock.hour && @minute == clock.minute
    false
  end

  def convert_hour(hour, minute)
    (hour+(minute / 60)) % 24
  end

  def convert_minute(minute)
    minute % 60
  end
end

