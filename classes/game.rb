require './classes/player.rb'

class Game
  attr_accessor :player1, :player2, :current_player

  def initialize()
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end 

  def run
    # while either player has more than 0 lives...
    @turn_count = 0

    while (@player1.lives.to_i != 0) && (@player2.lives.to_i != 0)
      @turn_count += 1
      self.turn
      puts "P1: #{@player1.lives}/3 P2: #{@player2.lives}/3"
      self.switch_player
    end
    self.end_game?
  end

  def turn
    @turn_num = Turn.new(@current_player)
  end

  def switch_player
    case @current_player
    when @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def end_game?
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end