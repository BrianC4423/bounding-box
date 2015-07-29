class BoundingBox
  attr_reader :x, :y, :width, :height

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    x
  end

  def right
    x + width
  end

  def top
    y + height
  end

  def bottom
    y
  end

  def contains_point?(x, y)
    x_condition = x >= left && x <= right
    y_condition = y >= bottom && y <= top
    x_condition && y_condition
  end
end
