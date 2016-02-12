class BeerSong
  # Sings the beer song
  VERSION=2

  def verse(v)
    # Sings a verse of the beer song
    case v
    when 2
        "2 bottles of beer on the wall, 2 bottles of beer.\n" \
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
        "1 bottle of beer on the wall, 1 bottle of beer.\n" \
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
        "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
        "#{v} bottles of beer on the wall, #{v} bottles of beer.\n" \
        "Take one down and pass it around, #{v-1} bottles of beer on the wall.\n"
    end
  end

  def verses(start, stop)
    # Sings a set of verses of the beer song
    start.downto(stop).map {|v| verse(v) }.join("\n")
  end

  def lyrics
    # Sings all of the verses of the beer song
    verses(99, 0)
  end
end
