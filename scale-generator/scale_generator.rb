class Scale
  attr_reader :name

  SHARP_SCALES = %w(C G D A E B F# a e b f# c# g# d#)
  SHARPS = %w(A A# B C C# D D# E F F# G G#)

  FLAT_SCALES = %w(F Bb Eb Ab Db Gb d g c f bb eb)
  FLATS = %w(A Bb B C Db D Eb E F Gb G Ab)

  STEP_SIZE = {'m' => 1, 'M' => 2, 'A' => 3}

  def initialize(scale, type, steps="mmmmmmmmmmmm")
    @scale = scale
    @steps = steps.each_char.map { |c| STEP_SIZE[c] }
    @steps = @steps.length.times.map { |i| @steps[0...i].inject(:+) || 0 }
    @name = "#{@scale.upcase} #{type.to_s}"
  end

  def pitches
    notes = SHARP_SCALES.include?(@scale) ? SHARPS : FLATS
    start = notes.index("#{@scale[0].upcase}#{@scale[1] || ''}")
    @steps.map { |step| notes[(step + start) % notes.length] }
  end
end