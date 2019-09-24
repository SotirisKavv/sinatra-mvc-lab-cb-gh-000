class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def convert
    if @text.match(/^[aeiou]/)
      text << "way"
    else
      push = @text.scan(/^[qwrtypsdfghjklzxcvbnm]*/i).count
      text = @text.slice(push..-1) + @text.slice(0..push-1)
      text.gsub(/^[qwrtypsdfghjklzxcvbnm]*/i, '') << "ay"
    end
  end

end
