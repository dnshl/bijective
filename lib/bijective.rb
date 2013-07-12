require 'bijective/generator'
require 'bijective/initialization_error'

module Bijective
  class Instance
    # Constructor initialises instance variables @sequence and @base.
    #
    # @param sequence [String] set instance object variable @sequence
    # @raise [InitializationError] if sequence parameter has duplicate
    #   characters
    # @return [Instance] new object instance
    def initialize sequence
      dublicate = sequence.split(//).uniq.join

      if dublicate.length != sequence.length
        raise(InitializationError, 'Sequence string must contain only unique charaters.')
      end

      @sequence = sequence
      @base = @sequence.length
    end

    # Encodes the given integer
    #
    # @param i [Integer] the integer to encode
    # @return [String] the encoded string
    def encode i
      return @sequence[0,1] if i == 0
      s = ''
      while i > 0
        s << @sequence[i.modulo(@base)]
        i /= @base
      end
      s.reverse
    end

    # Decodes the given string
    #
    # @param s [String] the string to decode
    # @return [Integer] the decoded integer
    def decode s
      i = 0
      s.each_char { |c| i = i * @base + @sequence.index(c) }
      i
    end
  end
end
