#BLOCK - Função anônima

sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number }
puts sum


foo = {2 => 3, 4 => 5}

foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end


def foo
  # Call the block
  yield #executa um bloco que foi passado por parâmetro
  yield
end

foo { puts "Exec the block"}
foo {puts 2*3}

def foo
  if block_given?
    # Call the block
    yield
  else
    puts "Sem parâmetro do tipo bloco"
  end
end

foo
foo { puts "Com parâmetro do tipo bloco"}