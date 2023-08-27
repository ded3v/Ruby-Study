class Saudation
  def hello(name)
    puts "Olá #{name}"
  end

  def count(text)
    text.length
  end

  def reversed(text)
    puts text.reverse

  end
end

greetings = Saudation.new
puts greetings.hello("João")

text = "Estou contando o número de caracteres"
puts text
puts "Número de caracteres #{greetings.count(text)}"
puts "Frase reversa: #{greetings.reversed(text)}"
puts "-------"


#Exercício 4: Corretor de Capitalização
# Desenvolva um programa que recebe uma frase do usuário, mas todas as letras estão em caixa alta.
# O programa deve corrigir a capitalização para que apenas a primeira letra de cada sentença seja maiúscula, enquanto o restante da frase é minúsculo.

def sentence_capitalize(sentence)
  words = sentence.split('. ')
  correct = []

  words.each do |sentenc|
    correct << sentenc.capitalize
  end
  correct.join('. ')
end

puts "Digite uma frase em caixa alta"
sentence = gets.chomp

puts "Frase corrigida:"
puts sentence_capitalize(sentence)