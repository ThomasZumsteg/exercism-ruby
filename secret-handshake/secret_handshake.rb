class SecretHandshake
  attr_reader :commands

  @@steps = [
    lambda { |array| array.push("wink") },
    lambda { |array| array.push("double blink") },
    lambda { |array| array.push("close your eyes") },
    lambda { |array| array.push("jump") },
    lambda { |array| array.reverse! },
  ]
  
  def initialize(code)
    @commands = []
    begin
      @@steps.each_with_index { |step, i| step.call(@commands) if 0 < (code & 1 << i) }
    rescue NoMethodError
    end
  end
end