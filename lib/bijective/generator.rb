module Bijective
  class Generator
    # Class method to generate a random string containing uppercase / lowercase
    # letters and numbers from 0 to 9
    #
    # @return [String] random string; with length 62
    def self.generate_sequence
      upcase_letters   = ('A'..'Z').to_a
      downcase_letters = ('a'..'z').to_a
      numbers          = (0..9).to_a
      (upcase_letters + downcase_letters + numbers).shuffle.join
    end
  end
end
