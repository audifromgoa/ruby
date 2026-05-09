require 'minitest/autorun'
require_relative '../1_week/6e_convert'

class TestConvert < Minitest::Test
  def test_body_temperature
    assert_in_delta 37.0, convert(98.6), 0.01
  end

  def test_boiling_point
    assert_in_delta 100.0, convert(212), 0.01
  end

  def test_freezing_point
    assert_in_delta 0.0, convert(32), 0.01
  end

  def test_negative_temperature
    assert_in_delta(-40.0, convert(-40), 0.01)
  end

  def test_arbitrary_value
    assert_in_delta 37.222222, convert(99), 0.000001
  end
end
