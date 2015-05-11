class BeerSong
  # Sings the beer song

  def verse(v)
    # Sings a verse of the beer song
    if v == 2
      return "2 bottles of beer on the wall, 2 bottles of beer.\n" \
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    elsif v == 1
      return "1 bottle of beer on the wall, 1 bottle of beer.\n" \
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif v == 0
      return "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      return "#{v} bottles of beer on the wall, #{v} bottles of beer.\n" \
        "Take one down and pass it around, #{v-1} bottles of beer on the wall.\n"
    end
  end

  def verses(start, stop)
    # Sings a set of verses of the beer song
    start.downto(stop).map {|v| verse(v) + "\n" }.join
  end

  def sing
    # Sings all of the verses of the beer song
    verses(99, 0)
  end
end
