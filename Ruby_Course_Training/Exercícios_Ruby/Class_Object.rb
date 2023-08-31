class Person
    attr_accessor :name, :age

    def hello
      puts "Hello #{@name}, your age is #{@age}"
    end
  end

person = Person.new
person.name = "André"
person.age = 31
person.hello


