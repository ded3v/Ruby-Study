
def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def multiply(x, y)
  x * y
end

def divide(x, y)
  if y != 0
    x / y
  else
    "Não é possível dividir por zero."
  end
end

loop do
  puts "Escolha uma operação:"
  puts "1. Adição"
  puts "2. Subtração"
  puts "3. Multiplicação"
  puts "4. Divisão"
  puts "5. Sair"

  choice = gets.chomp.to_i

  if choice == 5
    break
  end

  puts "Digite o primeiro número:"
  num1 = gets.chomp.to_f

  puts "Digite o segundo número:"
  num2 = gets.chomp.to_f

  case choice
  when 1
    puts "Resultado: #{add(num1, num2)}"
  when 2
    puts "Resultado: #{subtract(num1, num2)}"
  when 3
    puts "Resultado: #{multiply(num1, num2)}"
  when 4
    puts "Resultado: #{divide(num1, num2)}"
  else
    puts "Opção inválida."
  end
end
