module Speak
  def speak(msg)
    puts "#{msg}"
  end
end

class HumanBeing
  include Speak
end

mike = HumanBeing.new
mike.speak("Hello World!")

