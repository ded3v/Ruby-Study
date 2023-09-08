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

puts "-----"

#Exercício 4: Classe Conta Bancária
#
# Desenvolva uma classe chamada ContaBancaria que tenha os atributos titular, saldo e limite. Crie métodos para depositar, sacar e exibir o saldo da conta.
# O método de saque deve verificar se o valor a ser sacado não ultrapassa o saldo disponível mais o limite.

class ContaBancaria
  attr_accessor :titular, :saldo, :limite

  def initialize(titular, saldo_inicial, limite)
    @titular = titular
    @saldo = saldo_inicial
    @limite = limite
  end

  def depositar(valor)
    @saldo += valor
    puts "Depósito de R$#{valor} realizado. Novo saldo: R$#{@saldo}"
  end

  def sacar(valor)
    if valor <= @saldo + @limite
      @saldo -= valor
      puts "Saque de R$#{valor} realizado. Novo saldo: R$#{@saldo}"
    else
      puts "Saldo insuficiente."
    end
  end

  def exibir_saldo
    puts "Saldo atual de #{@titular}: R$#{@saldo}"
  end
end

# Exemplo de uso:
conta = ContaBancaria.new("João", 1000, 500)  # Titular, saldo inicial, limite
conta.exibir_saldo  # Deve exibir "Saldo atual de João: R$1000"
conta.depositar(500)  # Deve exibir "Depósito de R$500 realizado. Novo saldo: R$1500"
conta.sacar(1200)  # Deve exibir "Saque de R$1200 realizado. Novo saldo: R$300"
conta.sacar(1000)  # Deve exibir "Saldo insuficiente."

puts "-----"
#Exercício 5: Sistema de Biblioteca
#
# Crie um sistema de biblioteca com as classes Livro, Usuario e Biblioteca. A classe Livro deve ter atributos como título, autor e quantidade de exemplares disponíveis.
# A classe Usuario deve ter atributos como nome e idade.
# A classe Biblioteca deve permitir emprestar e devolver livros, atualizando a quantidade de exemplares disponíveis, e também exibir uma lista de livros disponíveis.

class Livro
  attr_accessor :titulo, :autor, :quantidade

  def initialize(titulo, autor, quantidade)
    @titulo = titulo
    @autor = autor
    @quantidade = quantidade
  end
end

class Usuario
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
end

class Biblioteca
  def initialize
    @livros = []
  end

  def adicionar_livro(livro)
    @livros << livro
  end

  def emprestar_livro(livro, usuario)
    if @livros.include?(livro) && livro.quantidade > 0
      livro.quantidade -= 1
      puts "#{livro.titulo} emprestado para #{usuario.nome}."
    else
      puts "Desculpe, o livro não está disponível para empréstimo."
    end
  end

  def devolver_livro(livro, usuario)
    if @livros.include?(livro)
      livro.quantidade += 1
      puts "#{livro.titulo} devolvido por #{usuario.nome}."
    else
      puts "Este livro não pertence a esta biblioteca."
    end
  end

  def listar_livros_disponiveis
    puts "Livros disponíveis na biblioteca:"
    @livros.each do |livro|
      puts "#{livro.titulo} (#{livro.autor}) - #{livro.quantidade} exemplares disponíveis"
    end
  end
end

# Exemplo de uso:
livro1 = Livro.new("Dom Casmurro", "Machado de Assis", 5)
livro2 = Livro.new("1984", "George Orwell", 3)
usuario1 = Usuario.new("João", 30)
usuario2 = Usuario.new("Maria", 25)

biblioteca = Biblioteca.new
biblioteca.adicionar_livro(livro1)
biblioteca.adicionar_livro(livro2)

biblioteca.emprestar_livro(livro1, usuario1)  # Deve emprestar
biblioteca.emprestar_livro(livro2, usuario2)  # Deve emprestar
biblioteca.emprestar_livro(livro2, usuario1)  # Deve emprestar

biblioteca.listar_livros_disponiveis  # Deve listar os livros disponíveis com as quantidades atualizadas

biblioteca.devolver_livro(livro1, usuario1)  # Deve devolver
biblioteca.devolver_livro(livro2, usuario2)  # Deve devolver

biblioteca.listar_livros_disponiveis  # Deve listar os livros disponíveis com as quantidades atualizadas


