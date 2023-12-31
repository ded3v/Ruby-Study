#BLOCK - Função anônima

#SOMA DE VALORES DE UMA ARRAY INPUTADA PELO USUÁRIO
puts "Insira o valor: (Digite 'fim' se quiser sair)"
budget = []

loop do    #Insere os valores ao array até o usuário parar
  input = gets.chomp
  break if input.downcase == "fim"
  budget.push(input.to_i)
end

puts "Valores inseridos: [#{budget.join(', ')}]" #

sum = 0
budget.each {|value| sum += value}  #Criado um bloco onde os valores vão ser somados da array
puts "O total do orçamento foi: #{sum}"


#SOMA DE VALORES DE UMA HASH
calories = {'hamburguer' => 295, 'Fresh Fries' => 312}
total_calories= 0
puts '---'

calories.each do |key, value|
  puts "food = #{key}"
  puts "calories = #{value}"
  total_calories += value
  puts '---'
end
puts "Total de calorias #{total_calories}"

puts '---'

def foo
  # Call the block
  yield #executa um bloco que foi passado por parâmetro
  yield
end

foo { puts "Exec the block"}
foo {puts 2*3}

puts '---'
def foo
  if block_given? #SE o bloco foi dado ele executa
    # Call the block
    yield
  else
    puts "Sem parâmetro do tipo bloco"
  end
end

foo #Executou o else pois não há bloco aqui
foo { puts "Com parâmetro do tipo bloco"} #há um bloco então entrou no IF


#
def blocks_variable(name, &block)
  @name = name
  block.call
end

blocks_variable('Andre') { puts "Hellow #{@name}" }


#Fazendo uma tabuada com blocos
def blocks_variable2(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = { 2 => 2, 3 => 3, 4 => 4 } #outra forma de representar a hash seria { 2: 2, 3: 3, 4: 4 }
other_numbers = { 20=> 1, 40=> 3, 60=> 5 }

blocks_variable2(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
end

blocks_variable2(other_numbers) do |key, value|
  puts "#{key} reais equivale a #{value} pontos"

end


#LAMBDAS

first_lambda = lambda{puts"this is my first lambda!"}  #O lambda armazena um block na variável para ser chamada
first_lambda.call


my_lambda = lambda do |numbers|
  index = 0
  puts 'Número atual + Próximo número'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]  #É possível reaproveitar o lambda fornecendo outros arrays para calcular

my_lambda.call(numbers)


def foo(first_lambda, second_lambda) #É mais fácil passar como parametro o LAMBDA do que usar &Blocks
  first_lambda.call
  second_lambda.call
end

first_lambda = lambda { puts "my first lambda"}
second_lambda = lambda { puts "my second lambda"}

foo(first_lambda, second_lambda)
puts"----"
#Se aprofundando no lambda

puts "Flexibilidade e Portabilidade: As lambdas são objetos que podem ser passados como argumentos para outras funções ou métodos."

def apply_lambda(array, func)
  array.map(&func) #o & subentende-se que entrará uma função de bloco como o lambda
end

double = lambda {|n| n*2}
half = lambda {|n|n/2.0}

numbers = [1, 2, 3, 4, 5]
result1 = apply_lambda(numbers, double)
result2 = apply_lambda(numbers, half)
puts result1
puts result2

puts "----"

is_even = lambda {|n| n.even?} #Verifica se o número é par
numb = [1, 3, 4, 5, 7, 10, 11]

even_numb = numb.select(&is_even)
puts even_numb
puts"----"


######### MODULES ######

