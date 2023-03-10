class Question
  attr_accessor :correct_answer, :question

  def initialize
    self.create_question
  end

  def choose_numbers
    # pick two random numbers between 1-20
    @num1 = 5
    @num2 = 2
  end

  def calculate_answer
    @correct_answer = @num1 + @num2
  end

  def create_question
    self.choose_numbers
    self.calculate_answer
    @question = "What does #{@num1} plus #{@num2} equal?"
  end
end
