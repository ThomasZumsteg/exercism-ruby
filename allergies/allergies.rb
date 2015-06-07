class Allergies
  attr_reader :list

  def initialize(code)
    @allergy_list = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)
    @list = @allergy_list.select.with_index { |a, i| code & 1 << i != 0 }
  end

  def allergic_to?(allergy)
    @list.include?(allergy)
  end
end