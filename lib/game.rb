require 'player.rb'
require 'board.rb'
require 'show.rb'
require 'verification.rb'

class Game

# attr_accessand :board

  def initialize
      @@players = []
      @board = Board.new
      @show = Show.new
      @usedcases= []
  end

  def start_game (name1,name2)
    @player1 = Player.new(name1,"O")
    @player2 = Player.new(name2,"X")
    @players = [@player1,@player2]
    return @players.sample
  end



  def turn(current_player)
   
    puts current_player.name + ", time to pick!"
    puts current_player.name + ", which case do you choose ?"
    print "> "
    boardcase=gets.chomp
    


     if @usedcases.include?(boardcase)
         puts "Already taken asshole, try another one "
         print "> "
          normal_turn(current_player)
        turn(other_player)

       elsif ["A1","A2","A3","B1","B2","B3","C1","C2","C3"].include?(boardcase)
         symbol = current_player.symbol
        board = Board.modify_board(symbol,boardcase)
        Show.print_board(board)
        puts "\nCases gagnantes : #{Verification.get_winning_cases(board)}"
        other_player=@players.reject{|block| block==current_player}[0]
        @usedcases << boardcase
        turn(other_player)
         
     else puts "Nope, that's not a valid case, read the rules and try again "

         turn(current_player)
        
     end

     def normal_turn 
        boardcase=gets.chomp
         symbol = current_player.symbol
        board = Board.modify_board(symbol,boardcase)
        Show.print_board(board)
        puts "\nCases gagnantes : #{Verification.get_winning_cases(board)}"
        other_player=@players.reject{|block| block==current_player}[0]
        @usedcases << boardcase
     end
    
  end
# def end_game

  # end


  end
