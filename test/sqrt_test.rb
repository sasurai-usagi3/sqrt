require 'test_helper'

class SqrtTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Sqrt::VERSION
  end

  def test_initialize_puts_value_on_variable_target
    x = Sqrt::Object.new(5)

    assert_equal(5, x.instance_variable_get(:@value))
  end
end
