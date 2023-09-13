#Exercício 1: Herança de Veículos
# Crie uma classe base chamada Veiculo com atributos como marca, modelo e ano. Em seguida, crie classes derivadas como Carro e Moto que herdam da classe Veiculo.
# Adicione atributos específicos para cada classe derivada, como numero_portas para carros e cilindrada para motos.

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

car = Car.new('Wolskwagen', 'Voyage', '2011', '5 portas', 'Cinza' )
puts "Marca: #{car.brand}, Modelo: #{car.model}, Ano: #{car.year}, Portas: #{car.door}, Cor: #{car.color}"

moto = Motorcycle.new('Yamaha', 'XT 660', '2001', '1998', 'Preta' )
puts "Marca: #{moto.brand}, Modelo: #{moto.model}, Ano: #{moto.year}, Cilindradas: #{moto.displacement}, Cor: #{moto.color}"

puts "------------"

#Exercício 2: Polimorfismo de Animais
# Crie uma classe base chamada Animal com um método falar.
# Em seguida, crie classes derivadas como Cachorro, Gato e Pato que herdam de Animal e sobrescrevem o método falar para exibir os sons típicos desses animais.

class Animal
  def talk
    raise "Método 'talk' deve ser implementado pelas subclasses"
  end
end

class Cachorro < Animal
  def falar
    "Au Au!"
  end
end

class Gato < Animal
  def falar
    "Miau!"
  end
end

class Pato < Animal
  def falar
    "Quack!"
  end
end

# Criando objetos das classes Cachorro, Gato e Pato
cachorro = Cachorro.new
gato = Gato.new
pato = Pato.new

# Chamando o método falar em cada objeto
puts "Cachorro: #{cachorro.falar}"
puts "Gato: #{gato.falar}"
puts "Pato: #{pato.falar}"

puts "-------------------"

#Exercício 3: Herança de Contas Bancárias
#
# Desenvolva um sistema de contas bancárias com uma classe base chamada ContaBancaria.
# Crie classes derivadas como ContaCorrente e ContaPoupanca que herdam de ContaBancaria. Adicione métodos específicos para cada tipo de conta, como sacar e depositar.

class ContaBancaria
  attr_reader :saldo

  def initialize(saldo_inicial)
    @saldo = saldo_inicial
  end

  def depositar(valor)
    @saldo += valor
    puts "Depósito de R$#{valor} realizado com sucesso."
  end

  def sacar(valor)
    if valor <= @saldo
      @saldo -= valor
      puts "Saque de R$#{valor} realizado com sucesso."
    else
      puts "Saldo insuficiente para sacar R$#{valor}."
    end
  end
end

class ContaCorrente < ContaBancaria
  attr_reader :limite

  def initialize(saldo_inicial, limite)
    super(saldo_inicial)
    @limite = limite
  end

  def sacar(valor)
    if valor <= @saldo + @limite
      @saldo -= valor
      puts "Saque de R$#{valor} realizado com sucesso (incluindo limite)."
    else
      puts "Saldo insuficiente (incluindo limite) para sacar R$#{valor}."
    end
  end
end

class ContaPoupanca < ContaBancaria
  def sacar(valor)
    puts "Você não pode sacar de uma conta poupança diretamente."
    puts "Transfira o dinheiro para sua conta corrente primeiro."
  end
end

# Exemplo de uso:

conta_corrente = ContaCorrente.new(1000, 500) # Saldo inicial: R$1000, Limite: R$500
conta_poupanca = ContaPoupanca.new(500)      # Saldo inicial: R$500

conta_corrente.depositar(200)
conta_corrente.sacar(800)

conta_poupanca.depositar(300)
conta_poupanca.sacar(200)

puts "--------------"

# Exercício 4: Polimorfismo de Figuras Geométricas

# Crie uma classe base chamada FiguraGeometrica com métodos para calcular a área e o perímetro.
# Em seguida, crie classes derivadas como Retangulo, Circulo e Triangulo que herdam de FiguraGeometrica
# e implementam os cálculos de área e perímetro de acordo com suas características.

class FiguraGeometrica
  def area
    raise "Método 'area' deve ser implementado pelas subclasses"
  end

  def perimetro
    raise "Método 'perimetro' deve ser implementado pelas subclasses"
  end
end

class Retangulo < FiguraGeometrica
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def area
    @base * @altura
  end

  def perimetro
    2 * (@base + @altura)
  end
end

class Circulo < FiguraGeometrica
  def initialize(raio)
    @raio = raio
  end

  def area
    Math::PI * @raio**2
  end

  def perimetro
    2 * Math::PI * @raio
  end
end

class Triangulo < FiguraGeometrica
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def area
    0.5 * @base * @altura
  end

  def perimetro
    # Não é possível calcular o perímetro apenas com base e altura de um triângulo genérico.
    raise "Perímetro não pode ser calculado para um triângulo genérico."
  end
end

# Exemplo de uso:

retangulo = Retangulo.new(5, 10)
circulo = Circulo.new(4)
triangulo = Triangulo.new(6, 8)

puts "Área do retângulo: #{retangulo.area}"
puts "Perímetro do retângulo: #{retangulo.perimetro}"

puts "Área do círculo: #{circulo.area}"
puts "Perímetro do círculo: #{circulo.perimetro}"

puts "Área do triângulo: #{triangulo.area}"
puts "Perímetro do triângulo: #{triangulo.perimetro}"
