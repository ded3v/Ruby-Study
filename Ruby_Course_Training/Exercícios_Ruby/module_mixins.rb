# Exercício 1: Mixin de Log
# Crie um módulo chamado Log que tenha um método para registrar mensagens de log.
# Em seguida, aplique esse módulo a duas classes diferentes, como Cliente e Produto, para que ambas possam registrar informações de log.

module Log
  def log(message)
    # Aqui você pode definir como deseja registrar as mensagens de log.
    # Por exemplo, pode ser uma simples impressão no console.
    puts "#{Time.now}: #{message}"
  end
end

class Cliente
  include Log

  def initialize(nome)
    @nome = nome
  end

  def comprar(produto)
    log("#{@nome} comprou #{produto}")
    # Lógica para compra de produto
  end
end

class Produto
  include Log

  def initialize(nome)
    @nome = nome
  end

  def adicionar_estoque(quantidade)
    log("Adicionado #{quantidade} unidades de #{@nome} ao estoque")
    # Lógica para adicionar estoque
  end
end

# Exemplo de uso
cliente1 = Cliente.new("Alice")
cliente1.comprar("Produto A")

produto1 = Produto.new("Produto B")
produto1.adicionar_estoque(10)
