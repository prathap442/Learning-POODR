# this is the Gear glass
class Gear
  attr_reader :cog, :chainring, :rim, :tier
  def initialize(chainring, cog, rim, tier)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tier = tier
  end

  def ratio
    @chainring/cog.to_f
  end
  
  def gear_inches
    ratio * Wheel.new(rim,tier)
  end
end