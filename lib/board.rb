class Board

  @@board = [[" "," "," "],[" "," "," "],[" "," "," "]]
  

 def self.modify_board (symbol,boardcase)
   case boardcase
   when "A1"
     @@board[0][0] = symbol
   when "B1"
     @@board[0][1] = symbol
   when "C1"
     @@board[0][2] = symbol
   when "A2"
     @@board[1][0] = symbol
   when "B2"
     @@board[1][1] = symbol
   when "C2"
     @@board[1][2] = symbol
   when "A3"
     @@board[2][0] = symbol
   when "B3"
     @@board[2][1] = symbol
   when "C3"
     @@board[2][2] = symbol
   end
puts @@board
return @@board
 end

end
