class Sqrt::Object
  # x type expects only Integer, Float, Rela in v0.1.0
  def initialize(coefficient, x)
    @coefficient = coefficient
    @value = x
  end

  def to_f
    @coefficient * (@value.positive? ? Math.sqrt(@value) : Complex(0, Math.sqrt(-@value)))
  end
end
