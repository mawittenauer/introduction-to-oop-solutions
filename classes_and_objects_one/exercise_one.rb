class MyCar
  
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
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
  
end

rav = MyCar.new(2015, "White", "Rav4")

rav.speed_up(25)
rav.current_speed
rav.break_car(15)
rav.current_speed
rav.shut_off
rav.current_speed
    
    
