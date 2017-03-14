class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sum
    total = 0
    @number.times do |i|
      total += (i + 1)
    end
    total **= 2
  end

  def sum_of_squares
    total = 0
    @number.times do |x|
      total += (x + 1) ** 2
    end
    total
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
    VERSION = 3 # Where the version number matches the one in the test.
end
