require 'minitest/autorun'
require_relative '../1_week/3c_text_formatting'

class TestTextFormatting < Minitest::Test
  def test_calculated_padding_for_4
    assert_equal 3, calculated_padding(4)
  end

  def test_calculated_padding_for_9
    assert_equal 3, calculated_padding(9)
  end

  def test_calculated_padding_for_12
    assert_equal 4, calculated_padding(12)
  end

  def test_table_gen_2x2
    result = table_gen(2)
    lines = result.strip.split("\n")
    assert_equal 2, lines.size
  end

  def test_table_gen_contains_correct_products
    result = table_gen(3)
    assert_includes result, '9'
  end

  def test_decorator_length
    result = decorator(4)
    expected_length = (4 * calculated_padding(4)) + 1
    assert_equal expected_length, result.size
  end
end
