#ESCOPO DE VARIÁVEIS

#Variáveis tipo classe

  def classt    #ACESSADA APENAS CHAMANDO O MÉTODO DA FUNÇÃO
    val = 2
    puts val
  end

classt #chama a variável e imprime
# puts val -> error

#VARIAVEIS TIPO GLOBAL  ->> '$' como prefixo

class Bar
  def foo
    $global = 0
    puts $global  #podem ser chamadas de qualquer lugar portanto é FORTEMENTE NÃO RECOMENDADO O USO DEVIDO A BUGS e DIFICULDADE DE RASTREA-LO
  end
end

class Baz
  def qux
    $global += 1
    puts $global
  end
end

bar = Bar.new
baz = Baz.new
bar.foo
baz.qux
baz.qux
puts $global

bar.foo
$global = 10
baz.qux
puts $global
baz.qux
puts $global

puts
#VARIAVEIS DE CLASSE -> prefixo '@@'

class User
  @@user_count = 0
  def add(name)
    puts "User name #{name}, adicionado! "
    @@user_count += 1
    puts @@user_count
  end
end

first_user = User.new
first_user.add('André')

second_user = User.new
second_user.add('Beto')


#VARIAVEIS DE INSTÂNCIA

class Livros
  attr_accessor :nome, :genero, :sinopse
end

livro_pisico = Livros.new
livro_pisico.nome = 'Nome: Os profundos mistérios da mente'
livro_pisico.genero = 'Gênero: Mentalidade, ciência-psicolígica, física quântica'
livro_pisico.sinopse = 'Sinopse: Conheça a ciência da subconsciência humana através do consciente e muda sua vida'

puts livro_pisico.nome
puts livro_pisico.genero
puts livro_pisico.sinopse


puts
#CONSTRUTOR

class Musica

  def initialize(song_name, tone)
    @song_name = song_name
    @tone = tone
  end

  def check
    puts "Música e seu tom:"
    puts "Música: #{@song_name}"
    puts "Tom: #{@tone}"

  end
end

music = Musica.new('The Bards Song', 'A')
music.check