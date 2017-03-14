class Fixnum
  def to_roman
    number = self
    thousands = (number / 1000).to_i
    hundreds = ((number - thousands*1000) / 100).to_i
    tens = ((number - thousands*1000 - hundreds*100) / 10).to_i
    ones = number - thousands*1000 - hundreds*100 - tens*10
    numerals = ""
    thousands.times {|x| numerals << "M"}
    case hundreds
    when 1..3
      hundreds.times {|x| numerals << "C"}
    when 4
      numerals <<"CD"
    when 5..8
      numerals << "D"
      (hundreds - 5).times {|x| numerals << "C"}
    when 9
      numerals << "CM"
    end

    case tens
    when 1..3
      tens.times {|x| numerals << "X"}
    when 4
      numerals <<"XL"
    when 5..8
      numerals << "L"
      (tens - 5).times {|x| numerals << "X"}
    when 9
      numerals << "XC"
    end

    case ones
    when 1..3
      ones.times {|x| numerals << "I"}
    when 4
      numerals <<"IV"
    when 5..8
      numerals << "V"
      (ones - 5).times {|x| numerals << "I"}
    when 9
      numerals << "IX"
    end

    numerals
  end
end


module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
