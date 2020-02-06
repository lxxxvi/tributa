require "test_helper"

class TributaTest < TributaTestBase
  def test_that_it_has_a_version_number
    refute_nil ::Tributa::VERSION
  end

  def test_it_parses_the_source
    stub_estv
    data = Tributa.load

    data.find_all_by(canton: 'GL', community: 'Glarus', year: 2018).first.tap do |tax|
      assert_equal '55.00', tax.canton_rate
      assert_equal '63.0000', tax.community_rate
      assert_equal '8.0000', tax.reformed_rate
      assert_equal '8.5000', tax.catholic_rate
    end
  end
end
