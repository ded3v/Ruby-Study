class Saudation
  def hello(name)
    puts "Olá #{name}"
  end

  def count(text)
    text.length
  end
end

greetings = Saudation.new
puts greetings.hello("João")

text = "Estou contando o número de caracteres"
puts text
puts "Número de caracteres #{greetings.count(text)}"

puts "-------"

