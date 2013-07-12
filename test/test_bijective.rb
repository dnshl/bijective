require File.expand_path('../helper', __FILE__)

class BijectiveTest < Test::Unit::TestCase
  def setup
    sequence = '713z6iE2lKokr5TLpHvwtQ9mZRJWcNbduBnqeCUfxDYGSXPVhj4asFyIgM8A0O'
    @bijective = Bijective::Instance.new(sequence)
  end

  def test_encode
    h = { '7'   => 0,
          'o'   => 10,
          '1U'  => 100,
          'pl'  => 1000,
          '3Cv' => 10000,
          'J7g' => 100000 }
    h.each { |k, v| assert_equal(k, @bijective.encode(v)) }
  end

  def test_decode
    h = { 0      => '7',
          10     => 'o',
          100    => '1U',
          1000   => 'pl',
          10000  => '3Cv',
          100000 => 'J7g' }
    h.each { |k, v| assert_equal(k, @bijective.decode(v)) }
  end
end
