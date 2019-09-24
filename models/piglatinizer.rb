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
        text.push(text[i])
        i += 1
      end
      push.times do
        text.shift
      end
      text << "ay"
    end
  end

end
