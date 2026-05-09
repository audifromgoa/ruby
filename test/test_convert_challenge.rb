require 'minitest/autorun'

# Methods extracted from 1_week/2c_convert_challenge.rb
# (Cannot require the file directly because it has top-level `gets` calls)

def c_to_k(value)
  value.to_f + 273.15
end

def f_to_k(value)
  (value.to_f + 459.67) * 0.55
end

def r_to_k(value)
  (value.to_f) * 5 / 9
end

def n_to_k(value)
  (value.to_f / 0.3300) + 273.15
end

def k_to_r(value)
  (value.to_f) * 9 / 5
end

def k_to_c(value)
  value.to_f - 273.15
end

def k_to_f(value)
  (value.to_f * 1.8) - 459.67
end

def k_to_n(value)
  (value.to_f - 273.15) * 0.3300
end

class TestConvertChallenge < Minitest::Test
  def test_c_to_k
    assert_in_delta 373.15, c_to_k(100), 0.01
  end

  def test_c_to_k_zero
    assert_in_delta 273.15, c_to_k(0), 0.01
  end

  def test_k_to_c
    assert_in_delta 100.0, k_to_c(373.15), 0.01
  end

  def test_k_to_c_absolute_zero
    assert_in_delta(-273.15, k_to_c(0), 0.01)
  end

  def test_k_to_f
    assert_in_delta 212.0, k_to_f(373.15), 0.01
  end

  def test_k_to_f_freezing
    assert_in_delta 32.0, k_to_f(273.15), 0.01
  end

  def test_k_to_r
    result = k_to_r(100)
    assert_in_delta 180.0, result, 0.01
  end

  def test_k_to_n
    assert_in_delta 33.0, k_to_n(373.15), 0.01
  end

  def test_roundtrip_c_to_k_and_back
    original = 25.0
    assert_in_delta original, k_to_c(c_to_k(original)), 0.001
  end
end
