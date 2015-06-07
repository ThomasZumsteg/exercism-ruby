class WordProblem
  attr_reader :answer

  @@tokens = {
    'plus' => '+',
    'minus' => '-',
    'multiplied by' => '*',
    'divided by' => '/',
    'What is' => '',
    '?' => '',
  }

  def initialize(problem)
    @@tokens.each_pair { |k, v| problem.gsub!(k, v) }
    @answer, *tokens = problem.split()
    raise ArgumentError unless @answer =~ /-?\d+/

    tokens.each_slice(2) do |op, num| 
      raise ArgumentError unless @@tokens.value?(op) and num =~ /-?\d+/
      @answer = eval("#{@answer} #{op} #{num}")
    end

  end
end