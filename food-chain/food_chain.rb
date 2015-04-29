class FoodChainSong
  # Sings the food chain song
  @@lyrics = {
    opening: "I know an old lady who swallowed ",
    firstLine: [
      "",
      "a fly.\n",
      "a spider.\nIt wriggled and jiggled and tickled inside her.\n",
      "a bird.\nHow absurd to swallow a bird!\n",
      "a cat.\nImagine that, to swallow a cat!\n",
      "a dog.\nWhat a hog, to swallow a dog!\n",
      "a goat.\nJust opened her throat and swallowed a goat!\n",
      "a cow.\nI don't know how she swallowed a cow!\n",
      "a horse.\nShe's dead, of course!\n",
    ],
    refrain: [
      "I don't know why she swallowed the fly. Perhaps she'll die.\n",
      "She swallowed the spider to catch the fly.\n",
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n",
      "She swallowed the cat to catch the bird.\n",
      "She swallowed the dog to catch the cat.\n",
      "She swallowed the goat to catch the dog.\n",
      "She swallowed the cow to catch the goat.\n",
    ],
  }

  def verse(v)
    # A single verse
    words = @@lyrics[:opening] + @@lyrics[:firstLine][v]

    # Horse case: She's dead, of course
    return words if @@lyrics[:refrain].length <= v - 1
    
    words + @@lyrics[:refrain][0, v].reverse.join
  end

  def verses(stop, start)
    # A range of verses
    return [*stop..start].inject('') { |song, v| song + verse(v) + "\n" }
  end

  def sing
    # The whole song
    return verses(1, 8)
  end
end
