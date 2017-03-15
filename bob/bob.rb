class Bob
  def self.hey(text)
    text_type = analyze_text(text)
    response = respond_to_text(text_type)
  end

  private

    def self.analyze_text(text)
      if /\A[^a-z]*\z/.match(text) && text.tr("A-Z","") != text
        "shout"
      elsif /[?]\z/.match(text)
        "question"
      elsif /\s$/.match(text) || text == ""
        "silence"
      else
        "other"
      end
    end

    def self.respond_to_text(type)
      case type
      when "shout"
        'Whoa, chill out!'
      when "question"
        'Sure.'
      when "silence"
        'Fine. Be that way!'
      when "other"
        'Whatever.'
      end
    end
end

