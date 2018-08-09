class Vector2
  getter x, y

  def initialize(@x : Int32, @y : Int32)
  end

  def to_s(io)
    io << "(" << x << "," << y << ")"
  end

  def +(other)
    Vector2.new(x + other.x, y + other.y)
  end
end

v1 = Vector2.new(1, 2)
v2 = Vector2.new(3, 4)

puts v1, v2, v1 + v2
