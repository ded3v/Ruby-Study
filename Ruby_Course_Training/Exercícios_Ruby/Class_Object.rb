#Exercício 1: Classe Pessoa
# Crie uma classe chamada Pessoa que tenha os atributos nome e idade.
# Crie um objeto dessa classe e atribua valores aos atributos. Em seguida, crie um método que exiba uma mensagem contendo o nome e a idade da pessoa.
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

#Exercício 2: Classe Cachorro
# Crie uma classe chamada Cachorro que tenha os atributos nome e raca.
# Crie um objeto dessa classe e atribua valores aos atributos. Em seguida, crie um método que exiba uma mensagem contendo o nome e a raça do cachorro.

class Dog
  attr_accessor :name, :race

  def name_race
    puts "O nome deste cachorro é #{@name}, da raça #{@race}, e é um animal belíssimo"
  end
end

dog = Dog.new
dog.name = "Ury"
dog.race = "Rottweiler"
dog.name_race