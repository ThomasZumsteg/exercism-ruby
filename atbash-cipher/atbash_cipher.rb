module Atbash
  @@letters = ('a'..'z').to_a.join

  def self.encode(plain_text)
    plain_text
      .downcase
      .gsub(/[^0-9a-z]/, '')
      .tr(@@letters, @@letters.reverse)
      .scan(/.{1,5}/).join(' ')
  end
end