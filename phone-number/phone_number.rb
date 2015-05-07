class PhoneNumber
  # Reads a phone number
  attr_reader :number, :area_code

  def initialize(phone_number)
    phone_regex = ["^", "1?", "(\\d{3})", "(\\d{3})", "(\\d{4})", "$"].join("\\W*")
    if phone_number =~ /#{phone_regex}/
      @number = $1 + $2 + $3
    else
      @number = "0" * 10
    end
    @area_code = @number.slice(0,3)
  end

  def to_s
    "(%s) %s-%s" % [@number[0..2], @number[3..5], @number[6..11]]
  end
  
end