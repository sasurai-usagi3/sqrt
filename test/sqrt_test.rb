require 'test_helper'

class SqrtTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Sqrt::VERSION
  end

  def test_initialize_puts_value_on_variable_target
    x = Sqrt::Object.new(1, 5)

    assert_equal(1, x.instance_variable_get(:@coefficient))
    assert_equal(5, x.instance_variable_get(:@value))
  end

  def test_to_f_returns_sqrt_value
    x1 = Sqrt::Object.new(1, 5)
    x2 = Sqrt::Object.new(1, 4)
    x3 = Sqrt::Object.new(1, 2/3r)
    x4 = Sqrt::Object.new(1, -1)
    x5 = Sqrt::Object.new(2, 5)

    assert_equal(Math.sqrt(5), x1.to_f)
    assert_equal(2, x2.to_f)
    assert_equal(Math.sqrt(2/3r), x3.to_f)
    assert_equal(1i, x4.to_f)
    assert_equal(2 * Math.sqrt(5), x5.to_f)
  end

  def test_times
    x1 = Sqrt::Object.new(1, 5)
    x2 = Sqrt::Object.new(1, 6)
    x3 = Sqrt::Object.new(1, 2/3r)
    x4 = Sqrt::Object.new(1, 4/5r)
    x5 = Sqrt::Object.new(1, -2)
    x6 = Sqrt::Object.new(1, -5)
    x7 = Sqrt::Object.new(2, 5)
    x8 = 2
    x9 = 1.2
    x10 = 4/5r
    x11 = 1 + 3i
    y1 = x1 * x2
    y2 = x1 * x3
    y3 = x1 * x5
    y4 = x1 * x7
    y5 = x1 * x8
    y6 = x1 * x9
    y7 = x1 * x10
    y8 = x1 * x11
    y9 = x3 * x1
    y10 = x3 * x4
    y11 = x3 * x5
    y12 = x3 * x7
    y13 = x3 * x8
    y14 = x3 * x9
    y15 = x3 * x10
    y16 = x3 * x11
    y17 = x5 * x1
    y18 = x5 * x3
    y19 = x5 * x6
    y20 = x5 * x7
    y21 = x5 * x8
    y22 = x5 * x9
    y23 = x5 * x10
    y24 = x5 * x11
    y25 = x8 * x1
    y26 = x8 * x3
    y27 = x8 * x5
    y28 = x9 * x1
    y29 = x9 * x3
    y30 = x9 * x5
    y31 = x10 * x1
    y32 = x10 * x3
    y33 = x10 * x5
    y34 = x11 * x1
    y35 = x11 * x3
    y36 = x11 * x5

    assert_equal(1, y1.instance_variable_get(:@coefficient))
    assert_equal(30, y1.instance_variable_get(:@value))
    assert_equal(1, y2.instance_variable_get(:@coefficient))
    assert_equal(10/3r, y2.instance_variable_get(:@value))
    assert_equal(1, y3.instance_variable_get(:@coefficient))
    assert_equal(-10, y3.instance_variable_get(:@value))
    assert_equal(2, y4.instance_variable_get(:@coefficient))
    assert_equal(25, y4.instance_variable_get(:@value))
    assert_equal(2, y5.instance_variable_get(:@coefficient))
    assert_equal(5, y5.instance_variable_get(:@value))
    assert_equal(1.2, y6.instance_variable_get(:@coefficient))
    assert_equal(5, y6.instance_variable_get(:@value))
    assert_equal(4/5r, y7.instance_variable_get(:@coefficient))
    assert_equal(5, y7.instance_variable_get(:@value))
    assert_equal(1 + 3i, y8.instance_variable_get(:@coefficient))
    assert_equal(5, y8.instance_variable_get(:@value))
    assert_equal(1, y9.instance_variable_get(:@coefficient))
    assert_equal(10/3r, y9.instance_variable_get(:@value))
    assert_equal(1, y10.instance_variable_get(:@coefficient))
    assert_equal(8/15r, y10.instance_variable_get(:@value))
    assert_equal(1, y11.instance_variable_get(:@coefficient))
    assert_equal(-4/3r, y11.instance_variable_get(:@value))
    assert_equal(2, y12.instance_variable_get(:@coefficient))
    assert_equal(10/3r, y12.instance_variable_get(:@value))
    assert_equal(2, y13.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y13.instance_variable_get(:@value))
    assert_equal(1.2, y14.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y14.instance_variable_get(:@value))
    assert_equal(4/5r, y15.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y15.instance_variable_get(:@value))
    assert_equal(1 + 3i, y16.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y16.instance_variable_get(:@value))
    assert_equal(1, y17.instance_variable_get(:@coefficient))
    assert_equal(-10, y17.instance_variable_get(:@value))
    assert_equal(1, y18.instance_variable_get(:@coefficient))
    assert_equal(-4/3r, y18.instance_variable_get(:@value))
    assert_equal(1, y19.instance_variable_get(:@coefficient))
    assert_equal(10, y19.instance_variable_get(:@value))
    assert_equal(2, y20.instance_variable_get(:@coefficient))
    assert_equal(-10, y20.instance_variable_get(:@value))
    assert_equal(2, y21.instance_variable_get(:@coefficient))
    assert_equal(-2, y21.instance_variable_get(:@value))
    assert_equal(1.2, y22.instance_variable_get(:@coefficient))
    assert_equal(-2, y22.instance_variable_get(:@value))
    assert_equal(4/5r, y23.instance_variable_get(:@coefficient))
    assert_equal(-2, y23.instance_variable_get(:@value))
    assert_equal(1 + 3i, y24.instance_variable_get(:@coefficient))
    assert_equal(-2, y24.instance_variable_get(:@value))
    assert_equal(2, y25.instance_variable_get(:@coefficient))
    assert_equal(5, y25.instance_variable_get(:@value))
    assert_equal(2, y26.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y26.instance_variable_get(:@value))
    assert_equal(2, y27.instance_variable_get(:@coefficient))
    assert_equal(-2, y27.instance_variable_get(:@value))
    assert_equal(1.2, y28.instance_variable_get(:@coefficient))
    assert_equal(5, y28.instance_variable_get(:@value))
    assert_equal(1.2, y29.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y29.instance_variable_get(:@value))
    assert_equal(1.2, y30.instance_variable_get(:@coefficient))
    assert_equal(-2, y30.instance_variable_get(:@value))
    assert_equal(4/5r, y31.instance_variable_get(:@coefficient))
    assert_equal(5, y31.instance_variable_get(:@value))
    assert_equal(4/5r, y32.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y32.instance_variable_get(:@value))
    assert_equal(4/5r, y33.instance_variable_get(:@coefficient))
    assert_equal(-2, y33.instance_variable_get(:@value))
    assert_equal(1 + 3i, y34.instance_variable_get(:@coefficient))
    assert_equal(5, y34.instance_variable_get(:@value))
    assert_equal(1 + 3i, y35.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y35.instance_variable_get(:@value))
    assert_equal(1 + 3i, y36.instance_variable_get(:@coefficient))
    assert_equal(-2, y36.instance_variable_get(:@value))
  end
end
