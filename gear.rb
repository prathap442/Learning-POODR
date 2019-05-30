require './wheel.rb'
# this is the Gear glass
class Gear
  attr_reader :cog, :chainring, :wheel
  def initialize(chainring, cog, wheel)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    @chainring/cog.to_f
  end
  
  def gear_inches
    ratio * wheel.diameter 
    # here the dependency with the Wheel class happens then the
    # This is not good to have 
    # what we do is we do a dependency injection
  end
end

gear = Gear.new(1, 2, Wheel.new(3, 4))
puts gear
puts gear.gear_inches
# And so while initializing the Gear class we do in the form of 
# Gear.new(chainring,cog,Wheel.new(rim,diameter))
# by doing this what happens is gear doesnot know that the wheel is an instance of the wheel 
# class and it just knows that the wheel has a method by name the diameter
