# use gets.chomp for user input
# I think all I/O here... ?

class Turn 
  attr_accessor :current_player, :player_answer, :correct_answer

  def initialize(current_player)
    @current_player = current_player
    puts "----- NEW TURN -----"
    self.run
  end

  def run
    self.ask_question
    @player_answer = gets.chomp.to_i
    is_correct = self.player_answer_correct?

    if is_correct
      puts "Yes! You are correct."
    else
      puts "Seriously? No!"
      @current_player.remove_life
    end
  end

  def ask_question
    @question1 = Question.new
    @correct_answer = @question1.correct_answer
    puts "#{@current_player.name}: #{@question1.question}"
  end

  def player_answer_correct?
    @player_answer == @correct_answer ? true : false
  end

end