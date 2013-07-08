require File.expand_path('../helper', __FILE__)

class GeneratorTest < Test::Unit::TestCase
  def test_generate_alphabet
    alphabet = Bijective::Generator.generate_alphabet
    assert_equal(62, alphabet.split(//).uniq.join.length)

    alphabet2 = Bijective::Generator.generate_alphabet
    assert_not_equal(alphabet, alphabet2)
  end
end
