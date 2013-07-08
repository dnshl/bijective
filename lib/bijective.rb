require 'bijective/generator'
require 'bijective/initialization_error'

module Bijective
  class Instance
    def initialize alphabet
      dublicate = alphabet.split(//).uniq.join

      if dublicate.length != alphabet.length
        raise(InitializationError, 'Alphabet string must contain only unique charaters.')
      end

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
end
