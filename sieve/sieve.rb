class Sieve

  def initialize(count)
    @numbers = [*1..count]
  end

  def primes
    return [] if @numbers.last < 2
    @numbers.delete_at(0)
    counter = 1
    @numbers.each do |x|
      counter2 = counter
      while counter2 < @numbers.length
        @numbers.delete_at(counter2) if @numbers[counter2] % x == 0
        counter2 += 1
      end
      counter += 1
    end
    return @numbers
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
