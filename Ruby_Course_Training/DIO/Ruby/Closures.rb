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

