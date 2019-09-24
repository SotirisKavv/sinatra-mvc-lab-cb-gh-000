class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def convert
    if @text.match(/^[qwrtypsdfghjklzxcvbnm][aeiou]/)
      text.push(text[0])
      text.shift
      text << "ay"
    elsif @text.match(/^[qwrtypsdfghjklzxcvbnm]{2}/)
      text.push(text[0])
      text.push(text[1])
      text.shift
      text.shift
      text << "ay"
    else
      text << "way"
    end
  end

end
