SCORING_POINTS = { 1 => ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
                   2 => ['D', 'G'],
                   3 => ['B', 'C', 'M', 'P'],
                   4 => ['F', 'H', 'V', 'W', 'Y'],
                   5 => ['K'],
                   8 => ['J', 'X'],
                   10 => ['Q', 'Z'] }

class Scrabble
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def score
    points = 0
    return points if word.nil?

    letter_arr = word.upcase.chars

    letter_arr.each do |letter|
      SCORING_POINTS.each_pair do |key, value|
        points += key if value.include?(letter)
      end
    end
    points
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end
