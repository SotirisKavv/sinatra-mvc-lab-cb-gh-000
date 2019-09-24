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

      text.shift
      text.shift
      text << "ay"
    else
      text << "way"
    end
  end

end
