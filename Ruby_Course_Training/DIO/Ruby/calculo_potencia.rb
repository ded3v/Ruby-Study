array = []
puts "Insira os numeros para serem elevados 3° potência"

for _ in 0..2 do
  i = gets.chomp.to_f
  array << i
end

puts array.inspect
new_array = array.map do |number|
  number**3
end

puts new_array.inspect