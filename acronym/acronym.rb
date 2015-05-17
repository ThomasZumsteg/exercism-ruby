module Acronym
  def self.abbreviate(phrase)
    # Look ahead for the "-", Find an uppercase letter or word bondary
    # Discard everything until the next uppercase letter or space or "-"
    r = Regexp.new(/(?<=-)?([A-Z]|\b\w)(?:[^A-Z -]+)/)
    phrase.scan(r).join.upcase
  end
end