class BeerSong
  def self.verse(n)
    if n > 2
      "#{n} bottles of beer on the wall, #{n} bottles of beer.\n" \
      "Take one down and pass it around, #{n - 1} bottles of beer on the wall.\n"
    elsif n == 2
      BeerSong.new.verse_2
    elsif n == 1
      BeerSong.new.verse_1
    elsif n == 0
      BeerSong.new.verse_0
    end
  end

  def self.verses(num1, num2)
    verses = []
    num1.downto(num2).each do |num|
      verses << verse(num)
    end
    verses.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end

  def verse_0
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def verse_1
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def verse_2
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end
end
