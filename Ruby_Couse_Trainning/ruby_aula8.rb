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


blocks_variable2(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  end