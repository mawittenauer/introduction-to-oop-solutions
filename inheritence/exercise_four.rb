module Towing
  def towing_capacity(weight)
    "This truck can tow #{weight} pounds"
  end
end

class Vehicle
  @@number_of_vehicles = 0
  
  attr_accessor :color
  
  attr_reader :year
  
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
    @@number_of_vehicles += 1
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
  
  def self.number_of_vehicles
    "There are #{@@number_of_vehicles} vehicles"
  end
  
  def self.gas_milage(miles, gallon)
    "This car gets #{miles/gallon} miles per gallon"
  end
  
  def age
    "#{calculate_age}"
  end
  
  private
  def calculate_age
    Time.now.year - year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  
  include Towing
end


truck = MyTruck.new(1995, "Red", "Ranger")
car = MyCar.new(1994, "White", "Taurus")
puts Vehicle.number_of_vehicles

truck.spray_paint("White")
p truck.color
p truck.age





















