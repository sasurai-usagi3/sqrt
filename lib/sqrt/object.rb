class Sqrt::Object
  # x type expects only Integer, Float, Rela in v0.1.0
  def initialize(coefficient, x)
    @coefficient = coefficient
    @value = x
  end

  def to_f
    @coefficient * (@value.positive? ? Math.sqrt(@value) : Complex(0, Math.sqrt(-@value)))
  end

  def *(target)
    if target.class == Sqrt::Object
      Sqrt::Object.new(@coefficient * target.instance_variable_get(:@coefficient), @value * target.instance_variable_get(:@value))
    elsif target.class <= Numeric
      Sqrt::Object.new(@coefficient * target, @value)
    end
  end
end
