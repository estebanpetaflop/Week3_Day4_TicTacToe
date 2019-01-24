
class Verification

  @@CASE_GROUPS = [
      ["A1", "A2", "A3"], # cases de la ligne A
      ["B1", "B2", "B3"], # cases de la ligne B
      ["C1", "C2", "C3"], # cases de la ligne C
      ["A1", "B1", "C1"], # cases de la colonne 1
      ["A2", "B2", "C2"], # cases de la colonne 2
<<<<<<< HEAD
      ["A3", "B3", "C3"], # cases de la colonne 3
=======
      ["A3", "A3", "A3"], # cases de la colonne 3
>>>>>>> 547b84519489cb767df1fdb2c22735b9cd37d8de
      ["A1", "B2", "C3"], # cases de la 1ère diagonale
      ["C1", "B2", "A3"] # cases de la 2ème diagonale
    ]

  # vérifie s'il y a un gagnant
  # si oui, retourne le cases gagnantes
  # sinon retourne nil
  def self.get_winning_cases(board)
    @@CASE_GROUPS.each { |group|
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
    i = Conversion.row_index(case_name[0])
    j = Conversion.col_index(case_name[1])
    return board[i][j]
  end

end
