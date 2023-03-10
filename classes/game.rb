require './classes/player.rb'

class Game
  attr_accessor :player1, :player2, :current_player

  def initialize()
    @player1 = Player.new("player1")
    @player2 = Player.new("player2")
    @current_player = @player1
  end 

  def run
    puts "dev: #{@player1.name} and #{@player2.name} have been defined, current player is #{@current_player.name}"
    
    # while either player has more than 0 lives...
    # run a new turn
    # switch current_player
    turn_count = 0

    puts "dev: #{@player1.lives.to_i == 0}"

    while @player1.lives.to_i != 0 && @player2.lives.to_i != 0
      turn_count += 1
      self.turn(turn_count)
      puts "P1: #{@player1.lives} P2: #{@player2.lives}/3"
      self.switch_player
    end
  end

  def turn(turn_num)
    @turn_num = Turn.new(@current_player, turn_num)
  end

  def switch_player
    case @current_player
    when @player1
      puts "dev: switch to player 2"
      @current_player = @player2
    else
      puts "dev: switch to player 1"
      @current_player = @player1
    end
  end

  def end_game
    puts "#{@current_player.name} wins with a score of #{@current_player/lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end