class Phrase

  def initialize(sentence)
    sentence.tr!(':;,!&@$%^&.?)(*#',' ')
    sentence.downcase!
    @words = sentence.split(" ")
    @words.each do |i|
      if /'.*'/.match(i)
        i.tr!("'",'')
      end
    end
  end

  def word_count
    counts = Hash.new 0
    @words.each do |x|
      counts[x] += 1
    end
    counts
  end

end

module BookKeeping
  VERSION = 1
end
