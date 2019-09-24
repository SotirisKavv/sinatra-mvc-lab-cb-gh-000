class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def convert
    if @text.match(/^[aeiou]/)
      text << "way"
    elsif @text.scan(/^[qwrtypsdfghjklzxcvbnm]*/i).count == 3
      text = @text.slice(3..-1) + @text.slice(0,3)
      text.gsub(/^[qwrtypsdfghjklzxcvbnm]*/i, '') << "ay"
    end
  end

end
