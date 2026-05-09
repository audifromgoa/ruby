require 'minitest/autorun'
require_relative '../1_week/4e_minutes_in_a_year'

class TestMinutesInAYear < Minitest::Test
  def test_minutes_in_year
    assert_equal 525_600, minutes_in_year
  end
end
