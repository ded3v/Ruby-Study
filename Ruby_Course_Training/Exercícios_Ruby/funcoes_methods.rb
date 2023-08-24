#Exercício 1: Cumprimentando Funçã

def cheer (name)
  puts "Ola, #{name}! Espero que esteja tudo bem com você!"
end

puts cheer('André')

#ex2

class Livro
  def initialize(autor, isbn = 1 ,numero_paginas)
    puts "Autor: #{autor} ISBN: #{isbn} Páginas: #{numero_paginas}"
  end
end

Livro.new "Lucas Souza", 200