class Show

  
def self.print_board(board)
    system("clear")
    puts
    print_header
    print_separator

    board.each.with_index { |row, i|
      print_row(row, i)
    }
  end


  private

  def self.print_header
    puts "         A        B        C     "
  end

  def self.print_separator
    puts "     +--------+--------+--------+"
  end

  def self.print_space
    puts "     |        |        |        |"
  end

  def self.print_row(row, row_index)
    print_space
    puts "  #{row_index+1}  |   #{get_emoji(row[0])}   |   #{get_emoji(row[1])}   |   #{get_emoji(row[2])}   |"
    print_space
    print_separator
  end

  # détermine l'emoji correspondant au symbole de la case
  def self.get_emoji(symbol)
    case symbol
    when "X"
      return "\u{274c}" # emoji croix
    when "O"
      return "\u{2b55}" # emoji rond
    else
      return "  " # emoji vide
    end
  end

  

  

end