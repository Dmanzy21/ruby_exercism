class Prime

  def self.nth(number)
    number
    if number > 0 and number.is_a? Integer
      findPrimes(number)
    else
      raise ArgumentError.new("Integers are required")
    end
    @primes[number - 1]
  end

  def self.findPrimes(num)
    @primes = [2]
    while @primes[num - 1].nil?
      @primes << nextPrime
    end
  end

  def self.nextPrime
    i = @primes.last + 1
    a = false
    until a
      a = true
      @primes.each do |x|
        if i % x == 0 then a = false end
      end
      i += 1
    end
    i - 1
  end

end

module BookKeeping
  VERSION = 1
end
