require 'minitest/autorun'
require_relative '../2_week/3e_method_leap_year'

class TestLeapYear < Minitest::Test
  def test_divisible_by_4
    assert leap_year?(1996)
  end

  def test_century_not_divisible_by_400
    refute leap_year?(1900)
  end

  def test_century_divisible_by_400
    assert leap_year?(2000)
  end

  def test_not_divisible_by_4
    refute leap_year?(2001)
  end

  def test_leap_year_2004
    assert leap_year?(2004)
  end

  def test_non_leap_year_2005
    refute leap_year?(2005)
  end

  def test_century_1800
    refute leap_year?(1800)
  end
end
