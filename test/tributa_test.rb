require "test_helper"

class TributaTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Tributa::VERSION
  end

  def test_it_parses_the_source
    data = Tributa.load
    assert_equal 112, data['AG']['Aarau']['2018'][:canton]
    assert_equal 97, data['AG']['Aarau']['2018'][:community]
    assert_equal 15, data['AG']['Aarau']['2018'][:reformed]
    assert_equal 18, data['AG']['Aarau']['2018'][:catholic]
  end
end
