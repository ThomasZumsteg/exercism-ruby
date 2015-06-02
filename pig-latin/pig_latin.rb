class PigLatin
  def self.translate(phrase)
    phrase.split.map{ |word| translate_word(word)}.join(' ')
  end

  private
  def self.translate_word(word)
    case word
    when /(.*?[^q])(u.*)/
      "#{$2}#{$1}ay"
    when /^y[^aeiou]/
      "#{word}ay"
    when /(.*?)([aeio].*)/
      if "#{$1}ay" == word
        "#{word}ay"
      else
        "#{$2}#{$1}ay"
      end
    else
      word
    end
  end
end