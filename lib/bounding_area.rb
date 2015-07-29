require_relative 'bounding_box'

class BoundingArea
  attr_reader :boxes

  def initialize(boxes)
    @boxes = boxes
  end

  def contains_point?(x, y)
    in_box = false
    boxes.each do |rect|
      if rect.contains_point?(x, y)
        in_box = true
      end
    end
    in_box
  end
end
