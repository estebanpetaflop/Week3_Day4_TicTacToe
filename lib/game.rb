require 'player.rb'
require 'board.rb'
require 'show.rb'
require 'verification.rb'
require 'conversion'

class Game

  # attr_accessand :board

  def initialize (name1,name2)  # Setup de nos arrays contenant les différentes variables
    # @@players = []
    @board = Board.new
    @usedcases= []
    @player1 = Player.new(name1,"O")
    @player2 = Player.new(name2,"X")
    @players = [@player1,@player2]
    Show.print_board(@board.matrix)


  end

  def start_game (name1,name2)  # Définition avant la partie de quel joueur commence et à quel symbole il correspond
    return @players.sample
    # @count = 0

  end



  def turn(current_player) # Chaque tour est constitué de cette boucle
      puts @usedcases.size
    print "> "
    boardcase=gets.chomp


    #  Premier cas si la case est déjà prise
    if @usedcases.include?(boardcase)
      puts "Already taken asshole, try another one "
      turn(current_player)

      # second cas, si le mec joue un truc normal
    elsif ["A1","A2","A3","B1","B2","B3","C1","C2","C3"].include?(boardcase)
      symbol = current_player.symbol
      board = @board.modify_board(symbol,boardcase)
      Show.print_board(board)
        # puts "\nCases gagnantes : #{Verification.get_winning_cases(board)}"





        if Verification.get_winning_cases(board)!=nil or @usedcases.size==9
            # si quelqu'un a gagné
          if Verification.get_winning_cases(board)!=nil
            puts "\nWinning cases: #{Verification.get_winning_cases(board)}"
            puts "Congratulations you " + current_player.name + " " + "you are fuck*n' incredible !!"
          else
              # cas d'égalité
              puts "It's a tie ! Let's play again ?? y/n"
              param = gets.chomp
          end
          # relance d'une partie ??
          puts "Let's play again? y/n"
          param = gets.chomp
            case param
            when "y"
              # @count +=1
              game2 = Game.new(@player1.name, @player2.name)
              current_player=game2.start_game(@player1.name,@player2.name)
              puts current_player.name + ", time to pick!"
              puts current_player.name + ", which case do you choose ?"
              game2.turn(current_player)
            when "n"
              puts "OK BYE BYE !"
          end
        else
            other_player=@players.reject{|block| block==current_player}[0]
            @usedcases << boardcase
            puts current_player.name + ", time to pick!"
            puts current_player.name + ", which case do you choose ?"
            turn(other_player)

        end

        #Dernier cas si le mec écrit nimp
      else puts "Nope, that's not a valid case, read the rules and try again "
        turn(current_player)

      end
    end


end
