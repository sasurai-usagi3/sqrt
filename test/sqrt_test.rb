require 'test_helper'

class SqrtTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Sqrt::VERSION
  end

  def test_initialize_puts_value_on_variable_target
    x = Sqrt::Object.new(5)

    assert_equal(5, x.instance_variable_get(:@value))
  end

  def test_to_f_returns_sqrt_value
    x1 = Sqrt::Object.new(5)
    x2 = Sqrt::Object.new(4)
    x3 = Sqrt::Object.new(2/3r)
    x4 = Sqrt::Object.new(-1)

    assert_equal(Math.sqrt(5), x1.to_f)
    assert_equal(2, x2.to_f)
    assert_equal(Math.sqrt(2/3r), x3.to_f)
    assert_equal(1i, x4.to_f)
  end
end
