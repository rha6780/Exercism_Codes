=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble
  @str

  def initialize(str)
    return @str='' if str == nil
    @str = str.upcase
  end

  def score
    score = 0
    @str.split('').each do |char|
      if ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'].include? char
        score = score + 1
      elsif ['D', 'G'].include? char
        score = score + 2
      elsif ['B', 'C', 'M', 'P'].include? char
        score = score + 3
      elsif ['F', 'H', 'V', 'W', 'Y'].include? char
        score = score + 4
      elsif ['K'].include? char
        score = score + 5
      elsif ['J', 'X'].include? char
        score = score + 8
      elsif ['Q', 'Z'].include? char
        score = score + 10
      else
      end
    end
    score
  end

  def self.score(str)
    score = 0
    str.upcase.split('').each do |char|
      if ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'].include? char
        score = score + 1
      elsif ['D', 'G'].include? char
        score = score + 2
      elsif ['B', 'C', 'M', 'P'].include? char
        score = score + 3
      elsif ['F', 'H', 'V', 'W', 'Y'].include? char
        score = score + 4
      elsif ['K'].include? char
        score = score + 5
      elsif ['J', 'X'].include? char
        score = score + 8
      elsif ['Q', 'Z'].include? char
        score = score + 10
      else
      end
    end
    score
  end

end
