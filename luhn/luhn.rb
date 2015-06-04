class Luhn
  def initialize(code)
    @code = code.to_s.split('').map(&:to_i)
  end
  
  def addends
    @code.reverse.each_with_index.map do |d, i| 
      if i.even? 
        d
      elsif d < 5
        2 * d
      else
        2 * d - 9
      end
    end.reverse
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(code)
    code * 10 + (10 - Luhn.new(code * 10).checksum) % 10
  end

  
end