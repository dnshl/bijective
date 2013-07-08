require File.expand_path('../helper', __FILE__)

class InitializationErrorTest < Test::Unit::TestCase
  def test_initialization_error
    assert_raise Bijective::InitializationError do
      bijective = Bijective::Instance.new('StringWithDuplicatedCharacters')
    end
  end
end
