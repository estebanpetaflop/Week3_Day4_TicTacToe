
class Show

  @@winning_cases = []

  def self.print_board(board)
    system("clear")
    puts
    print_header
    print_separator

    # on détermine s'il y a des cases gagnantes
    @@winning_cases = Verification.get_winning_cases(board)

    # on affiche le plateau ligne par ligne
    board.each.with_index { |row, i|
      print_row(board, i)
    }
  end

  private

  def self.print_header
    puts "         1        2        3     "
  end

  def self.print_separator
    puts "     +--------+--------+--------+"
  end

  def self.print_space
    puts "     |        |        |        |"
  end

  def self.print_row(board, i)
    print_space
    puts "  #{Conversion.row_name(i)}  |   #{get_emoji(board, i, 0)}   |   #{get_emoji(board, i, 1)}   |   #{get_emoji(board, i, 2)}   |"
    print_space
    print_separator
  end

  # détermine l'emoji correspondant aux coordonnées de la case
  def self.get_emoji(board, i, j)
    if is_winning_case(i, j)
      # emojis gagnants
      emoji_croix = "\u{2b50}"
      emoji_rond = "\u{1f642}"
    else
      # emojis normaux
      emoji_croix = "\u{274c}"
      emoji_rond = "\u{2b55}"
    end

    case board[i][j] # symbole contenu dans la case
    when "X"
      return emoji_croix
    when "O"
      return emoji_rond
    else
      return "  " # emoji vide
    end
  end

  # si on est sur une case gagnante
  def self.is_winning_case(i, j)
<<<<<<< HEAD
    if @@winning_cases == nil
      return false
    end

=======
    # puts "@@winning_cases" + @@winning_cases.to_s
    # puts "Conversion.case_name(#{i}, #{j})" + Conversion.case_name(i, j)
    # puts "Test include : " + @@winning_cases.include?(Conversion.case_name(i, j)).to_s
>>>>>>> 547b84519489cb767df1fdb2c22735b9cd37d8de
    return @@winning_cases.include?(Conversion.case_name(i, j))
  end

end
