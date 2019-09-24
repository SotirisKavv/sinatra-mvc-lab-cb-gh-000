class PigLatinizer

  def self.piglatinize(text)
    if text.match(/^[aeiouAEIUO]/)
      text << "w"
    elsif text.scan(/^[qwrtypsdfghjklzxcvbnm]*/i).count == 3
      text = text.slice(3..-1) + text.slice(0,3)
    elsif text.scan(/^[qwrtypsdfghjklzxcvbnm]*/i).count == 2
      text = text.slice(2..-1) + text.slice(0,2)
    elsif text.scan(/^[qwrtypsdfghjklzxcvbnm]*/i).count == 1
      text = text.slice(1..-1) + text.slice(0,1)
    end
    text << "ay"
  end

end
