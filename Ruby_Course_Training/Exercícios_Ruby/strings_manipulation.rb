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

