require File.expand_path('../helper', __FILE__)

class BijectiveTest < Test::Unit::TestCase
  def test_generate_alphabet
    alphabet = Bijective.generate_alphabet
    assert_equal(62, alphabet.split(//).uniq.join.length)

    alphabet2 = Bijective.generate_alphabet
    assert_not_equal(alphabet, alphabet2)
  end

  def test_encode
    set_alphabet
    assert_equal('7',   @bijective.encode(0))
    assert_equal('o',   @bijective.encode(10))
    assert_equal('1U',  @bijective.encode(100))
    assert_equal('pl',  @bijective.encode(1000))
    assert_equal('3Cv', @bijective.encode(10000))
    assert_equal('J7g', @bijective.encode(100000))
  end

  def test_decode
    set_alphabet
    assert_equal(0,      @bijective.decode('7'))
    assert_equal(10,     @bijective.decode('o'))
    assert_equal(100,    @bijective.decode('1U'))
    assert_equal(1000,   @bijective.decode('pl'))
    assert_equal(10000,  @bijective.decode('3Cv'))
    assert_equal(100000, @bijective.decode('J7g'))
  end

private

  def set_alphabet
    alphabet = '713z6iE2lKokr5TLpHvwtQ9mZRJWcNbduBnqeCUfxDYGSXPVhj4asFyIgM8A0O'
    @bijective = Bijective.new(alphabet)
  end
end
