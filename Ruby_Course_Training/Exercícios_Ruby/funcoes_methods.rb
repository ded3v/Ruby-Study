#Exercício 1: Cumprimentando Funçã

def cheer (name)
  puts "Ola, #{name}! Espero que esteja tudo bem com você!"
end

puts cheer('André')

#ex2
#Exercício 2: Calculadora Simples

def calculadora(num1, operator, num2)
  case operator
  when "+"
    return num1 + num2
  when "-"
    return num1 - num2
  when "*"
    return num1 * num2
  when "/"
    return num1 / num2
  else
    return "Operador inválido"
  end
end


puts "Digite o primeiro número:"
number1 = gets.chomp.to_f

puts "Digite o operador (+, -, *, /):"
operator = gets.chomp

puts "Digite o segundo número:"
number2 = gets.chomp.to_f

resultado = calculadora(number1, operator, number2)
puts "Resultado: #{resultado}"


##MEDIA_NOTAS

def calc_media(notas)
  return 0 if notas.empty?

  total = notas.reduce(0.0) {|sum, nota| sum + nota} ## INteressante pontuar a função .reduce usado para somar termos de uma array por exemplo e sempre estruturado
  # em pelo menos dois parâmetros, geralmente o primero adotado como 'sum' que vai acumular os valores
  media = total/notas.length
  return media
end

notas1 = [9, 8, 8.5, 10]
puts calc_media(notas1)

puts "-------"

