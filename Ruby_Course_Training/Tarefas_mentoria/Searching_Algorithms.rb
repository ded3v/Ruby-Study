#Searching linear Algorithn

list = [2, 4, 6, 10, 20, 7]

found = false

puts "Digete um valor para procurar na lista:"
number = gets.chomp.to_i
list.each do |target|
  if target == number
    puts "O valor procurado está na posição #{list.index(target)} e o valor é #{target} "
    found = true
  end
end

unless found
puts "Valor não encontrado"
end




#Binary Search

def binary_search(array, target)
  low = 0
  high = array.length - 1

  while low <= high
    mid = (low+high) / 2
    mid_value = array[mid]

    if mid_value == target
      return mid
    elsif mid_value < target
      low = mid + 1
    else
      high = mid - 1
    end
  end

  return -1 #caso o valor não seja encontrado no loop
end

list = [2, 4, 6, 10, 20, 22, 25, 30, 32]

puts "Digite o valor a ser encontrado na lista"
number = gets.chomp.to_i

search = binary_search(list, number)

if search != -1
  puts "O valor #{number} foi encontrado e está na posição #{search}"
else
  puts "Valor #{number} não encontrado"
end
