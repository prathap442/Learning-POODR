# this is the wheel class
class Wheel
  attr_reader :rim,:tier  
  def initialize(rim,tier)
    @rim = rim
    @tier = tier
  end

  def diameter
    rim + (2 * tier)
  end
end