=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
class Phrase
  @word = ''
  
  def initialize(word)
    @word = word
  end

  def word_count
    words = @word.downcase.scan(/\b[\w']+\b/)
    words
    count = {}
    words.each do |w|
      if count[w].nil?
        count[w] = 0
      end
      count[w] = count[w]+1
    end
    count.each do |key, value|
      p "#{key}: #{value}"
    end
  end

end