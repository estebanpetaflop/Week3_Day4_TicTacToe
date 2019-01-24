require 'player.rb'
require 'board.rb'
require 'show.rb'

class Game

# attr_accessor :board

def initialize
    @@player1 = Player.new (player1, "O")
    @@player2 = Player.new (player2, "X")
    @@players = [@player1,@player2]
    @board = Board.new
    @show = Show.new
end

def turn(current_player, boardcase)

  if @@used_cases.include?(boardcase)
    return "Already taken asshole, try another "
  elsif
    symbol = current_player.symbol
    board = Board.modify_board(symbol,boardcase)
    Show.print_board(board)
  end

def end_game

end


end
