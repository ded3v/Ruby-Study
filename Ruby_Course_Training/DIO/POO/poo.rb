class Base
  def go_on
    print "Esteja motivado"
    end
end

class Motivation < Base
  def morning_miracle
    print "wake up early 05:00"
    end
end

motivate = Motivation.new
puts motivate.go_on
puts motivate.morning_miracle

