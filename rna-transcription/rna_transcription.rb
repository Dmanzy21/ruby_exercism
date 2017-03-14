class Complement

  def self.of_dna(dna)
    rna = ""
    dna.length.times do |nucleotide|
      case dna[nucleotide]
      when "A"
        rna << "U"
      when "T"
        rna << "A"
      when "C"
        rna << "G"
      when "G"
        rna << "C"
      else
        return ""
      end
    end
    return rna
  end

end

module BookKeeping
  VERSION = 4
end
