class Board

attr_accessor :matrix


  def initialize
  @matrix = [[" "," "," "],[" "," "," "],[" "," "," "]]
  end


 def modify_board (symbol,boardcase)
   case boardcase
   when "A1"
     @matrix[0][0] = symbol
   when "B1"
     @matrix[1][0] = symbol
   when "C1"
     @matrix[2][0] = symbol
   when "A2"
     @matrix[0][1] = symbol
   when "B2"
     @matrix[1][1] = symbol
   when "C2"
     @matrix[2][1] = symbol
   when "A3"
     @matrix[0][2] = symbol
   when "B3"
     @matrix[1][2] = symbol
   when "C3"
     @matrix[2][2] = symbol
   end
puts @matrix
return @matrix
 end

end
