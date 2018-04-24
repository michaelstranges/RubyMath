require './player.rb'

class Game

  def initialize
    player1 = Player.new("Player 1")
    player2 = Player.new("Player 2")
    @players = [player1, player2]
    @players2 = [player1, player2] #probably not the best solution
    @round = 0
  end

  def play
    while (not game_over?)
      current_player = @players.first

      num1 = rand(20)
      num2 = rand(20)
      sum = num1 + num2

      puts "#{current_player.name}: What does #{num1} plus #{num2} equal"
      answer = gets.chomp.to_i

      if(answer == sum)
        puts "#{current_player.name}: Nice Job! You are correct"
      else
        puts "#{current_player.name}: No... really? #{num1} + #{num2} = #{answer}?"
        current_player.lose_a_life
      end

      swap_player

      print_summary

    end
#Risky, but with the rotating values, it does work out.
    puts "#{@players.first.name} wins with a score of #{@players.first.life}/3"
    puts "-----GAME OVER-----"
    puts "Good Bye!"

  end

  private

  def swap_player
    @players.rotate!
    @round += 1
  end

  def print_summary
    puts "P1: #{@players2[0].life}/3 vs P2: #{@players2[1].life}/3 "
    puts
    puts "----- NEW TURN -----"
  end

  def game_over?
    @players.any? { |player| player.is_dead? }
  end
end