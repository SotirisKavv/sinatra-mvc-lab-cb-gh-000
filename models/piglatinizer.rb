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
      i = 0
      push.times do
        text << text[i]
        i += 1
      end
      text = text[push..-1]
      text << "ay"
    end
  end

end
