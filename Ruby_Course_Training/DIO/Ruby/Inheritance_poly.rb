class Vehicle
  attr_accessor :brand, :model, :year
end

class Car < Vehicle
  attr_accessor :door, :color
end

class Motorcycle < Vehicle
  attr_accessor :displacement, :color
end

