class Verification


  # def self.check_input(boardcase)

  # end
  # vérifie s'il y a un gagnant
  # si oui, retourne le cases gagnantes
  # sinon retourne nil
  def self.get_winning_cases(board)
    case_groups = [
      ["A1", "A2", "A3"], # cases de la ligne 1
      ["B1", "B2", "B3"], # cases de la ligne 2
      ["C1", "C2", "C3"], # cases de la ligne 3
      ["A1", "A2", "A3"], # cases de la colonne 1
      ["A1", "A2", "A3"], # cases de la colonne 2
      ["A1", "A2", "A3"], # cases de la colonne 3
      ["A1", "B2", "C3"], # cases de la diagonale 1
      ["A3", "B2", "C1"] # cases de la diagonale 2
    ]

    case_groups.each { |group|
      if check_cases(board, group)
        return group
      end
    }

    return nil
  end

  # vérifie si un groupe de cases est gagnant
  def self.check_cases(board, case_group)
    str = get_case_symbol(board, case_group[0]) + get_case_symbol(board, case_group[1]) + get_case_symbol(board, case_group[2])
    case str.upcase
    when "XXX", "OOO"
      return case_group
    else
      return nil
    end
  end
# récupere le symbole contenu dans la case
  def self.get_case_symbol(board, case_name)
    x = row_index(case_name)
    y = col_index(case_name)
    return board[x][y]
  end

  # determine l'indice de la ligne
  def self.row_index(case_name)
    case case_name[0].upcase
    when "A"
      return 0
    when "B"
      return 1
    when "C"
      return 2
    else
      return -1
    end
  end

  # détermine l'indice de la colonne
  def self.col_index(case_name)
    case case_name[1].upcase
    when "1"
      return 0
    when "2"
      return 1
    when "3"
      return 2
    else
      return -1
    end
  end

end