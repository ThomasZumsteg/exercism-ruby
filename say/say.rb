class Say
  def initialize(num)
    @num = num
    @ones = %w(zero one two three four five six seven eight nine)
    @tens = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninty)
    @teens = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    @powers = ["", " thousand", " million", " billion"]
  end
  
  def in_english
    raise ArgumentError unless 0 <= @num and @num < 1_000_000_000_000

    return "zero" if @num == 0

    @num.to_s.reverse.scan(/.{1,3}/).zip(@powers).reverse.map do |group, power|
        group_to_english(power, *(group.split("").map(&:to_i)))
    end.reject(&:empty?).join(" ")
  end

  private

  def group_to_english(power, one=0, ten=0, hundered=0)
    result = ""
    result += @ones[hundered] + " hundred" if hundered != 0

    return "#{!result.empty? ? result + " " : ""}#{@teens[one]}" if ten == 1
    result += "#{!result.empty? ? " " : ""}#{@tens[ten]}" if ten != 0
    
    result += "#{ten == 0 ? hundered==0 ? "" : " " : "-"}#{@ones[one]}" if one > 0

    result.empty? ? "" : result + power
  end
  
end