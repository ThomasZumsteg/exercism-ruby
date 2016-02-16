module Raindrops
  # Makes raindrop sounds from numbers
  VERSION=1

  @@sounds = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
  
  def self.convert num
    # Converts n into raindrop sounds
    noise = @@sounds.keys.inject('') do | total , key| 
      num % key == 0 ? total + @@sounds[key] : total
    end
  
    noise.empty? ? num.to_s : noise
  end
end
