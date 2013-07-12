module Bijective
  class Generator
    def self.generate_sequence
      upcase_letters   = ('A'..'Z').to_a
      downcase_letters = ('a'..'z').to_a
      numbers          = (0..9).to_a
      (upcase_letters + downcase_letters + numbers).shuffle.join
    end
  end
end
