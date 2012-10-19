class Flexnum < Numeric
  include Comparable
  attr_accessor :value # any easy way to avoid this?

  def initialize v; @value = v; end

  def inc!; @value += 1; return self; end
  def inspect; @value.inspect; end

  def + o
    f(value + o.value)
  end

  def <=> o
    value <=> o.value
  end

  private

  def f v
    Flexnum.new v
  end
end
