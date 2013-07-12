require 'bijective/generator'
require 'bijective/initialization_error'

module Bijective
  class Instance
    def initialize sequence
      dublicate = sequence.split(//).uniq.join

      if dublicate.length != sequence.length
        raise(InitializationError, 'Sequence string must contain only unique charaters.')
      end

      @sequence = sequence
      @base = @sequence.length
    end

    # returns string
    def encode i
      return @sequence[0] if i == 0
      s = ''
      while i > 0
        s << @sequence[i.modulo(@base)]
        i /= @base
      end
      s.reverse
    end

    # returns integer
    def decode s
      i = 0
      s.each_char { |c| i = i * @base + @sequence.index(c) }
      i
    end
  end
end
