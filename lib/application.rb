require 'game.rb'

class Application
  attr_accessor :name

	def initialize 
		@game = Game.new
  end

  def perform

  puts "Hey, do you wanna play some Tic Tac Toe? Press enter to play"
  puts ">"
  gets.chomp
  puts "Alright, bring it on!"
  puts "Player 1, what’s your name?"
  print "> "
  @name1 = gets.chomp

  puts "Player 2, what’s your name?"
  print "> "
  @name2 = gets.chomp
  
    current_player=@game.start_game(@name1,@name2)
    @game.turn(current_player)

  end
end
