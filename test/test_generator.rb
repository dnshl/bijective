require File.expand_path('../helper', __FILE__)

class GeneratorTest < Test::Unit::TestCase
  def test_generate_sequence
    sequence = Bijective::Generator.generate_sequence
    assert_equal(62, sequence.split(//).uniq.join.length)

    sequence2 = Bijective::Generator.generate_sequence
    assert_not_equal(sequence, sequence2)
  end
end
