class MyCar
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
  
  def self.gas_milage(miles, gallon)
    puts "This car gets #{miles/gallon} miles per gallon"
  end
  
end

rav = MyCar.new(2015, "White", "Rav4")
MyCar.gas_milage(315, 20)


    
    
