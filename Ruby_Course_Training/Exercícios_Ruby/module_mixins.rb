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


#Exercício 3: Módulo de Autenticação
#
# Crie um módulo chamado Autenticacao que tenha métodos para autenticar usuários, como verificar um nome de usuário e senha.
# Em seguida, aplique esse módulo a uma classe Usuario para fornecer recursos de autenticação.

module Autenticacao
  def autenticar(usuario, senha)
    # Aqui você pode implementar a lógica de autenticação.
    # Este é um exemplo simples para fins de demonstração.
    if usuario == "usuario" && senha == "senha"
      puts "Autenticação bem-sucedida para o usuário: #{usuario}"
      return true
    else
      puts "Falha na autenticação para o usuário: #{usuario}"
      return false
    end
  end
end

class Usuario
  include Autenticacao

  def initialize(nome)
    @nome = nome
  end

  def fazer_algo
    # Alguma ação que requer autenticação
    autenticar(@nome, "senha_secreta")
    # Outras ações após a autenticação bem-sucedida
  end
end

# Exemplo de uso
usuario = Usuario.new("usuario")
usuario.fazer_algo
