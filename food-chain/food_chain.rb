class FoodChainSong
  # Sings the food chain song
  def initialize
    @first_line = [
      "",
      "a fly.\n",
      "a spider.\nIt wriggled and jiggled and tickled inside her.\n",
      "a bird.\nHow absurd to swallow a bird!\n",
      "a cat.\nImagine that, to swallow a cat!\n",
      "a dog.\nWhat a hog, to swallow a dog!\n",
      "a goat.\nJust opened her throat and swallowed a goat!\n",
      "a cow.\nI don't know how she swallowed a cow!\n",
      "a horse.\nShe's dead, of course!\n",
    ]
    @opening = "I know an old lady who swallowed "
    @refrain = [
      "I don't know why she swallowed the fly. Perhaps she'll die.\n",
      "She swallowed the spider to catch the fly.\n",
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n",
      "She swallowed the cat to catch the bird.\n",
      "She swallowed the dog to catch the cat.\n",
      "She swallowed the goat to catch the dog.\n",
      "She swallowed the cow to catch the goat.\n",
    ]
    @num_verses = @refrain.length
  end

  def verse(verse_num)
    # A single verse
    words = @opening + first_line(verse_num)

    # Horse case: She's dead, of course
    return words if @num_verses < verse_num
    
    words + refrain(verse_num)
  end

  def verses(start, stop)
    # A range of verses
    start.upto(stop).inject('') { |song, v| song + verse(v) + "\n" }
  end

  def sing
    # The whole song
    verses(1, 8)
  end

  def first_line(verse_num)
    @first_line[verse_num]
  end

  def refrain(verse_num)
    @refrain.first(verse_num).reverse.join
  end
end
