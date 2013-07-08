class Bijective
  def self.generate_alphabet
    upcase_letters   = ('A'..'Z').to_a
    downcase_letters = ('a'..'z').to_a
    numbers          = (0..9).to_a

    alphabet = (upcase_letters + downcase_letters + numbers).shuffle.join
  end

  def initialize alphabet
    @alphabet = alphabet
    @base = @alphabet.length
  end

  # returns string
  def encode i
    return @alphabet[0] if i == 0
    s = ''
    while i > 0
      s << @alphabet[i.modulo(@base)]
      i /= @base
    end
    s.reverse
  end

  # returns integer
  def decode s
    i = 0
    s.each_char { |c| i = i * @base + @alphabet.index(c) }
    i
  end
end
