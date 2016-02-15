class FoodChain
  # Sings the food chain song
  VERSION = 2
  @@first_line = [
    "",
    "a fly.\n",
    "a spider.\nIt wriggled and jiggled and tickled inside her.\n",
    "a bird.\nHow absurd to swallow a bird!\n",
    "a cat.\nImagine that, to swallow a cat!\n",
    "a dog.\nWhat a hog, to swallow a dog!\n",
    "a goat.\nJust opened her throat and swallowed a goat!\n",
    "a cow.\nI don't know how she swallowed a cow!\n",
    "a horse.\nShe's dead, of course!",
  ]
  @@opening = "I know an old lady who swallowed "
  @@refrain = [
    "I don't know why she swallowed the fly. Perhaps she'll die.\n",
    "She swallowed the spider to catch the fly.\n",
    "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n",
    "She swallowed the cat to catch the bird.\n",
    "She swallowed the dog to catch the cat.\n",
    "She swallowed the goat to catch the dog.\n",
    "She swallowed the cow to catch the goat.\n",
  ]
    @@num_verses = @@refrain.length

  def self.verse(verse_num)
    # A single verse
    words = @@opening + @@first_line[ verse_num ]

    # Horse case: She's dead, of course
    return words if @@num_verses < verse_num
    
    words + @@refrain.first(verse_num).reverse.join
  end

  def self.verses(start, stop)
    # A range of verses
    start.upto(stop).inject('') { |song, v| song + verse(v) + "\n" }
  end

  def self.song
    # The whole song
    verses(1, 8)
  end
end
