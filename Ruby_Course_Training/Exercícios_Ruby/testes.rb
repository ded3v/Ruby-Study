
puts "Digite um número de 0..100 e tente adivinhar o número da sorte!"
number = gets.chomp.to_i

random = rand(1..100)

while number != random
  if number < random
    puts "O número ainda é maior que isso, tente novamente"
  else
    puts "Número é menor que isso, tente novamente"
  end
  number = gets.chomp.to_i
end

puts "Acertou! O número da sorte é #{random}"