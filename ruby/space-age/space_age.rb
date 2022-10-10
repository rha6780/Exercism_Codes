=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end
class SpaceAge

  @second
  def initialize(second)
    @second = second
  end

  def on_earth
    (@second.to_f/31_557_600).round(2)
  end

  def on_mercury
    (on_earth/0.2408467).round(2)
  end

  def on_venus
    (on_earth/0.61519726).round(2)
  end

  def on_mars
    (on_earth/1.8808158).round(2)
  end

  def on_jupiter
    (on_earth/11.862615).round(2)
  end

  def on_saturn
    (on_earth/29.44749).round(2)
  end

  def on_uranus
    (on_earth/84.016846).round(2)
  end

  def on_neptune
    (on_earth/164.7913).round(2)
  end
end