# use gets.chomp for user input
# I think all I/O here... ?

class Turn 
  attr_accessor :turn_num, :current_player, :player_answer, :correct_answer

  def initialize(current_player, turn_num)
    @turn_num = turn_num
    @current_player = current_player
    puts "----- NEW TURN -----"
    self.run
  end

  def run
    self.ask_question
    @player_answer = gets.chomp.to_i
    @correct = self.plyr_answer_correct?

    if @correct
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

  def plyr_answer_correct?
    @player_answer == @correct_answer ? true : false
  end

end