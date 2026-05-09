require 'minitest/autorun'
require_relative '../1_week/3e_how_old'

class TestHowOld < Minitest::Test
  def test_age_in_year_with_known_value
    result = age_in_year(979_000_000)
    assert_in_delta 31.04, result, 0.01
  end

  def test_age_in_year_with_zero
    assert_equal 0, age_in_year(0)
  end

  def test_age_in_year_with_one_year
    one_year_seconds = 365 * 24 * 60 * 60
    assert_in_delta 1.0, age_in_year(one_year_seconds), 0.001
  end
end
