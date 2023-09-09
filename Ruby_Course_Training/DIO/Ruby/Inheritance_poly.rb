class Vehicle
  attr_accessor :brand, :model, :year

  def initialize(brand, model, year)
    @brand = brand
    @model = model
    @year = year
  end
end

class Car < Vehicle
  attr_accessor :door, :color

  def initialize(brand, model, year, door, color)
    super(brand, model, year)
    @door = door
    @color = color
  end
end

class Motorcycle < Vehicle
  attr_accessor :displacement, :color

  def initialize(brand, model, year, displacement, color)
    super(brand, model, year)
    @displacement = displacement
    @color = color
  end
end

car = Car.new('Voyage', )
