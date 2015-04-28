class Bob
  def hey(what)
    # A lackadaisical teenager
    what.strip!
    return 'Fine. Be that way!' if what == ""
    return 'Whoa, chill out!' if what =~ /^[^a-z]+$/ and what =~ /[A-Z]/
    return 'Sure.' if what[-1, 1] == '?'
    return "Whatever."
  end
end