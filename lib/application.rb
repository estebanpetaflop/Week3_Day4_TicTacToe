require 'controller'

class Application
  attr_accessor :name

	def initialize # Setup new game
		@game = Game.new
  end

  puts "Hey, let's play some Tic Tac Toe!"

  def ask_player_name_1(name_1)
    @name = name_1
    puts "Player 1, what’s your name?"
    print "> "
    name_1 = gets.chomp
    puts name_1
  end

  def ask_player_name_2(name_2)
    @name = name_2
    puts "Player 2, what’s your name?"
    print "> "
    name_2 = gets.chomp
    puts name_2
  end


 def launch_game
  while true
    puts "#{@name}, time to pick!"


    # Ask which case (A1, B1...)
    puts "#{@name}, which case do you choose ? (Available choices: )"
    print "> "
    @choosed_case = gets.chomp
    while @choosed_case != "A1, A2, A3, B1, B2, B3, C1, C2, C3" do
      puts "Nope, that's not a valid case, try again."
      @choosed_case = gets.chomp
    end
    # Puts the symbol into case
  end
end
