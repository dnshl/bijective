module Bijective
  class Generator
    def self.generate_alphabet
      upcase_letters   = ('A'..'Z').to_a
      downcase_letters = ('a'..'z').to_a
      numbers          = (0..9).to_a

      alphabet = (upcase_letters + downcase_letters + numbers).shuffle.join
    end
  end
end
