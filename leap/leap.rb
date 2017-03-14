class Year

  def self.leap?(num)
    if (num % 4 == 0 and num % 100 != 0) or num % 400 == 0
      true
    else
      false
    end
  end

end

module BookKeeping
  VERSION = 2;
end
