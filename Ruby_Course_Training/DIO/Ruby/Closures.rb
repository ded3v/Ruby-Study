def teste
  yield
end
puts "teste1"
teste {puts "Execute o bloco"}
puts"--------"

puts "teste2"
def teste2
  if block_given?
    yield
  else
    puts "Sem parâmetro do tipo bloco"
  end
end
puts"--------"

teste2
teste2 {puts "Bloco chamado"}
puts"--------"

puts "teste3"
def teste3 (name, &block)
  @name = name
  block.call
end

teste3('André'){puts "Olá #{@name}"}

puts "teste 4"

def teste4(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key,value)
    end
  end
end

numbers = {2 => 2, 3 => 3, 4 => 4 }

teste4(numbers) do |key, value|
  puts "#{key} * #{value} = #{key*value}"
  puts "#{key} + #{value} = #{key+value}"
  puts "#{key} / #{value} = #{key/value}"
  puts "#{key} - #{value} = #{key-value}"
end


first_lambda = lambda{puts"this is my first lambda!"}  #O lambda armazena um block na variável para ser chamada
second_lambda = -> {puts"this is my first lambda!"}  #Outra maneira de chamar o lambda (mas não é possível sempre chamar assim)
first_lambda.call
second_lambda.call

lambda_parameters = -> (names) {names.each { |name| puts name} }
list_names = ['André', 'Ana', 'Valdir', 'Alanna']
lambda_parameters.call(list_names)


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


hello_proc = Proc.new do
  puts "Hello PRoc"
end

hello_proc.call

hello_proc = proc do #forma mais simpples
  puts "Hello PRoc 2"
end

hello_proc.call

