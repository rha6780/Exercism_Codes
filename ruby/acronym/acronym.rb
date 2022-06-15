=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
class Acronym

  def self.abbreviate(long_name)
    words = long_name.split
    result = ''
    words.each do |word|
      unless word[0] == '-'
        result = "#{result}#{word[0].capitalize()}"
        if word.include? '-'
          index = word.index('-')
          if word.size > index+1
            result = "#{result}#{word[index+1].capitalize()}"
          end
        end
      end
    end
    result
  end
end