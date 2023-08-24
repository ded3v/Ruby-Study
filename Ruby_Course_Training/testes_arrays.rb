

array = [2, 3, 5, 10, 31]

puts array.index(2) #imprime o index do elemento ()
puts array[2] #imprime o elemento do index []
puts
index = 0
array.each do |numbers|
  puts "Index: #{index}: #{numbers}"
  index += 1
end
puts "---"

array = [2, 3, 5, 10, 31]

for index in 0...array.size #em um loop como FOR a variável "index" é criada automaticamente e armazena em cada iteração o valor (após o 'in') 0...(até) o tamanho da array
  puts "Index #{index}: #{array[index]}"
end
puts "---"

array = [2, 3, 5, 10, 31]

array.each_with_index do |number, index| #Estrutura with_index marca um elemento e uma index na array
  puts "Index #{index}: #{number}"
end

