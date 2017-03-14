class Grains

  def self.square(num)
    if num <= 64 and num > 0 and num.is_a? Integer
      compute_square(num)
    else
      raise ArgumentError.new("Integers between 1 and 64 are required")
    end
  end

  def self.total
    value = 0
    (1..64).each {|x| value += compute_square(x) }
    value
  end

  def self.compute_square(num)
    2 ** (num - 1)
  end

end

module BookKeeping
  VERSION = 1
end
