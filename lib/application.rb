require 'game.rb'

class Application
  attr_accessor :name

	def initialize # Setup new game
		@game = Game.new
  end

  def perform

  puts "Hey, do you wanna play some Tic Tac Toe? Press enter to play"
    # gets.chomp
    puts "Alright, bring it on!"
    puts "Player 1, what’s your name?"
    print "> "
    @name1 = gets.chomp
 
    puts "Player 2, what’s your name?"
    print "> "
    @name2 = gets.chomp
  
    # while true
    current_player=@game.start_game(@name1,@name2)
    puts current_player.name + ", time to pick!"
    puts current_player.name + ", which case do you choose ?"
    print "> "
    @boardcase = gets.chomp
    @game.turn(current_player,@boardcase)
    @boardcase = gets.chomp
    @game.turn(current_player,@boardcase)
    @boardcase = gets.chomp
    @game.turn(current_player,@boardcase)
    # end
    # Puts the symbol into case
  end
end
