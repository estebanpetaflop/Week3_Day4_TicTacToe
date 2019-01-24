class Board

  @@board = [[" "," "," "],[" "," "," "],[" "," "," "]]

 def modify_board (symbol,boardcase)
   case boardcase
   when "A1"
     @@board[1][1] = symbol
   when "A2"
     @@board[1][2] = symbol
   when "A3"
     @@board[1][3] = symbol
   when "B1"
     @@board[2][1] = symbol
   when "B2"
     @@board[2][2] = symbol
   when "B3"
     @@board[2][3] = symbol
   when "C1"
     @@board[3][1] = symbol
   when "C2"
     @@board[3][2] = symbol
   when "C3"
     @@board[3][3] = symbol
   end
return @@board
 end
