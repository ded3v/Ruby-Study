class Base
  def go_on
    print "Esteja motivado"
  end

  def morning_miracle
    puts "Estou tentando acordar cedo"
  end
end

class Motivation < Base
  def morning_miracle
    puts "waked up early 05:00"
    super
    end
end

motivate = Motivation.new
puts motivate.go_on
puts motivate.morning_miracle

