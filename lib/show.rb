class Show

  def self.print_board(board)
    system("clear")
    puts
    print_separator

    board.each { |row|
      print_row(row)
    }
  end

  private

  def self.print_separator
    puts "+--------+--------+--------+"
  end

  def self.print_space
    puts "|        |        |        |"
  end

  def self.print_row(row)
    print_space
    puts "|   #{get_emoji(row[0])}   |   #{get_emoji(row[1])}   |   #{get_emoji(row[2])}   |"
    print_space
    print_separator
  end

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

  def name_question ()
  end

  def case_question ()
  end

end
