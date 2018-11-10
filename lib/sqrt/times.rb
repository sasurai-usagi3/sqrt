module Sqrt::Times
  class << self
    def included(klass)
      Integer.class_eval do
        alias_method :math_times, :*
        def *(x)
          x.class == Sqrt::Object ? Sqrt::Object.new(self.math_times(x.instance_variable_get(:@coefficient)), x.instance_variable_get(:@value)) : self.math_times(x)
        end
      end

      Float.class_eval do
        alias_method :math_times, :*
        def *(x)
          x.class == Sqrt::Object ? Sqrt::Object.new(self.math_times(x.instance_variable_get(:@coefficient)), x.instance_variable_get(:@value)) : self.math_times(x)
        end
      end

      Rational.class_eval do
        alias_method :math_times, :*
        def *(x)
          x.class == Sqrt::Object ? Sqrt::Object.new(self.math_times(x.instance_variable_get(:@coefficient)), x.instance_variable_get(:@value)) : self.math_times(x)
        end
      end

      Complex.class_eval do
        alias_method :math_times, :*
        def *(x)
          x.class == Sqrt::Object ? Sqrt::Object.new(self.math_times(x.instance_variable_get(:@coefficient)), x.instance_variable_get(:@value)) : self.math_times(x)
        end
      end
    end
  end
end
