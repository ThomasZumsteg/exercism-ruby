module RomanNumerals
 DIGITS = [[   '',  '',  '',   ''], #0
            '   I    X    C    M'.split(' '), #1
            '  II   XX   CC   MM'.split(' '), #2
            ' III  XXX  CCC  MMM'.split(' '), #3
            '  IV   XL   CD'.split(' '), #4
            '   V    L    D'.split(' '), #5
            '  VI   LX   DC'.split(' '), #6
            ' VII  LXX  DCC'.split(' '), #7
            'VIII LXXX DCCC'.split(' '), #8
            '  IX   XC   CM'.split(' '), #9
          ]

  def to_roman
    # Roman numeral representation of a number
    return self.to_s.reverse.each_char.with_index.map do |digit, power| 
      DIGITS[digit.to_i][power]
    end.reverse.join('')
  end
end

Fixnum.class_eval { include RomanNumerals }
