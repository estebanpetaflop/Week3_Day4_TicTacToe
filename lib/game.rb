require 'player.rb'
require 'board.rb'
require 'show.rb'
require 'verification.rb'

class Game

# attr_accessor :board

  def initialize
      @@players = []
      @board = Board.new
      @show = Show.new
      @@usedcases= []
  end

  def start_game (name1,name2)
    @player1 = Player.new(name1,"O")
    @player2 = Player.new(name2,"X")
    @players = [@player1,@player2]
    return @players.sample
  end



  def turn(current_player, boardcase)
   @@usedcases << boardcase
    # if @boardcase!= ("A1" || "A2" || "A3" || "B1" || "B2" || "B3" || "C1" || "C2" || "C3") do
    #     return "Nope, that's not a valid case, try again "
    #     # puts "> "
        # @boardcase=gets.chomp
      # else 
     
        # if @@usedcases.include?(boardcase)
        #   return "Already taken asshole, try another "

      symbol = current_player.symbol
      board = Board.modify_board(symbol,boardcase)
      Show.print_board(board)
  end

  
      # changement de player
  def change_player(current_player)
    other_player=@@players.delete(current_player)[0]
  end


  # def end_game

  # end


  end
