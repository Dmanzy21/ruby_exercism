class Hamming
  def self.compute(strand1,strand2)
    if strand1.length == strand2.length
      strand1.length.times.count do |loc|
        strand1[loc] != strand2[loc]
      end
    else
      raise ArgumentError.new("Strands must be same size")
    end
  end
end

module BookKeeping
    VERSION = 3
end
