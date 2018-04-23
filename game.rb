require './player.rb'

class Game

  def initialize
    player1 = player.new("Player 1")
    player2 = player.new("Player 2")
    @players = [player1, player 2]
    @round = 0
  end

  def play
    while (not game_over?)
      current_player = @players.first



      puts "#{current_plater}: What does #{num1} plus #{num2} equal"





  end


  def print_summary
    puts
    puts "End of Round #{@round}"
    puts "P1: ---  vs P2: --- "
    puts "----- NEW TURN -----"
  end

  def game_over?
    @players.any? { |player| player.is_dead? }
  end



end