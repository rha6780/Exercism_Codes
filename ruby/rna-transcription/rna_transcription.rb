=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end
class Complement
    def self.of_dna(dna)
      rna = ''
      dna.each_char do |nucleotide|
        if nucleotide == 'G'
          rna += 'C'
        elsif nucleotide == 'C'
          rna += 'G'
        elsif nucleotide == 'T'
          rna += 'A'
        elsif nucleotide == 'A'
          rna += 'U'
        end 
      end      
      rna
    end
end