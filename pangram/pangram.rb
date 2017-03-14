class Pangram

  def self.pangram?(sentence)
    alt = sentence.downcase.delete(' ')

    if sentence.length < 26
      puts "#{sentence.inspect} is NOT a pangram"
      return false
    else

      26.times do |x|
        length1 = alt.length
        alt.delete!((x + 97).chr)
        length2 = alt.length

        if length1 == length2
          puts "#{sentence.inspect} is NOT a pangram"
          return false
        end

      end
    end

    "#{sentence.inspect} IS a pangram"
    return true
  end

end

module BookKeeping
  VERSION = 3
end
