
class Conversion

  # conversion nom de ligne --> indice de ligne
  def self.row_index(row_name)
    case row_name.upcase
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

  # conversion nom de colonne --> indice de colonne
  def self.col_index(col_name)
    case col_name.upcase
    when "1"
      return 0
    when "2"
      return 1
    when "3"
      return 2
    else
      return nil
    end
  end

  # conversion indice de ligne --> nom de ligne
  def self.row_name(row_index)
    case row_index
    when 0
      return "A"
    when 1
      return "B"
    when 2
      return "C"
    else
      return nil
    end
  end

  # conversion indice de colonne --> nom de colonne
  def self.col_name(col_index)
    case col_index
    when 0
      return "1"
    when 1
      return "2"
    when 2
      return "3"
    else
      return nil
    end
  end

  # conversion coordonnées (i,j) --> nom de case
  def self.case_name(row_index, col_index)
    return row_name(row_index) + col_name(col_index)
  end

end