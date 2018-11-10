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

  def test_exponetion
    x1 = Sqrt::Object.new(1, 2)
    x2 = Sqrt::Object.new(1, 1.2)
    x3 = Sqrt::Object.new(1, 2/3r)
    x4 = Sqrt::Object.new(1, 2 + 3i)
    x5 = Sqrt::Object.new(2, 3)
    y1 = x1 ** 1
    y2 = x1 ** 2
    y3 = x1 ** 3
    y4 = x1 ** 4
    y5 = x2 ** 1
    y6 = x2 ** 2
    y7 = x2 ** 3
    y8 = x2 ** 4
    y9 = x3 ** 1
    y10 = x3 ** 2
    y11 = x3 ** 3
    y12 = x3 ** 4
    y13 = x4 ** 1
    y14 = x4 ** 2
    y15 = x4 ** 3
    y16 = x4 ** 4
    y17 = x5 ** 1
    y18 = x5 ** 2
    y19 = x5 ** 3
    y20 = x5 ** 4
    y21 = x1 ** 0
    y22 = x2 ** 0
    y23 = x3 ** 0
    y24 = x4 ** 0
    y25 = x5 ** 0

    assert_equal(Sqrt::Object, y1.class)
    assert_equal(1, y1.instance_variable_get(:@coefficient))
    assert_equal(2, y1.instance_variable_get(:@value))
    assert_equal(Integer, y2.class)
    assert_equal(2, y2)
    assert_equal(Sqrt::Object, y3.class)
    assert_equal(2, y3.instance_variable_get(:@coefficient))
    assert_equal(2, y3.instance_variable_get(:@value))
    assert_equal(Integer, y4.class)
    assert_equal(4, y4)
    assert_equal(Sqrt::Object, y5.class)
    assert_equal(1, y5.instance_variable_get(:@coefficient))
    assert_equal(1.2, y5.instance_variable_get(:@value))
    assert_equal(Float, y6.class)
    assert_equal(1.2, y6)
    assert_equal(Sqrt::Object, y7.class)
    assert_equal(1.2, y7.instance_variable_get(:@coefficient))
    assert_equal(1.2, y7.instance_variable_get(:@value))
    assert_equal(Float, y8.class)
    assert_equal(1.44, y8)
    assert_equal(Sqrt::Object, y9.class)
    assert_equal(1, y9.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y9.instance_variable_get(:@value))
    assert_equal(Rational, y10.class)
    assert_equal(2/3r, y10)
    assert_equal(Sqrt::Object, y11.class)
    assert_equal(2/3r, y11.instance_variable_get(:@coefficient))
    assert_equal(2/3r, y11.instance_variable_get(:@value))
    assert_equal(Rational, y12.class)
    assert_equal(4/9r, y12)
    assert_equal(Sqrt::Object, y13.class)
    assert_equal(1, y13.instance_variable_get(:@coefficient))
    assert_equal(2 + 3i, y13.instance_variable_get(:@value))
    assert_equal(Complex, y14.class)
    assert_equal(2 + 3i, y14)
    assert_equal(Sqrt::Object, y15.class)
    assert_equal(2 + 3i, y15.instance_variable_get(:@coefficient))
    assert_equal(2 + 3i, y15.instance_variable_get(:@value))
    assert_equal(Complex, y16.class)
    assert_equal(-5 + 12i, y16)
    assert_equal(Sqrt::Object, y17.class)
    assert_equal(2, y17.instance_variable_get(:@coefficient))
    assert_equal(3, y17.instance_variable_get(:@value))
    assert_equal(Integer, y18.class)
    assert_equal(12, y18)
    assert_equal(Sqrt::Object, y19.class)
    assert_equal(24, y19.instance_variable_get(:@coefficient))
    assert_equal(3, y19.instance_variable_get(:@value))
    assert_equal(Integer, y20.class)
    assert_equal(144, y20)
    assert_equal(1, y21)
    assert_equal(1, y22)
    assert_equal(1, y23)
    assert_equal(1, y24)
    assert_equal(1, y25)
  end
end
