class Vehicle
  def self.gas_milage(miles, gallon)
    "This car gets #{miles/gallon} miles per gallon"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  
  attr_accessor :color
  
  attr_reader :year
  
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end
  
  def spray_paint(color)
    self.color = color
  end
  
  def speed_up(speed)
    @speed += speed
  end
  
  def break_car(speed)
    @speed -= speed
  end
  
  def current_speed
    puts "you are now going #{@speed}"
  end
  
  def shut_off
    @speed = 0
  end
  
  def to_s
    puts "This is a #{color} #{year} #{@model}"
  end
  
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end

