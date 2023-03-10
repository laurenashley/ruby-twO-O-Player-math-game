class Question
  attr_accessor :correct_answer, :question

  def initialize
    self.create_question
  end

  def choose_numbers
    # pick two random numbers between 1-20
    @num1 = rand(20)
    @num2 = rand(20)
  end

  def calculate_answer
    case @operator_string
    when @operator_string.include?("plus")
      @correct_answer = @num1 + @num2
    when @operator_string.include?("minus")
      @correct_answer = @num1 - @num2
    when @operator_string.include?("times")
      @correct_answer = @num1 * @num2
    end
  end

  def create_question
    self.choose_numbers
    operator_opts = [
      "#{@num1} plus #{@num2}",
      "#{@num1} minus #{@num2}",
      "#{@num1} times #{@num2}"
    ]
    @operator_string = operator_opts[rand(operator_opts.length)]
    self.calculate_answer
    @question = "What does #{@operator_string} equal?"
  end
end
