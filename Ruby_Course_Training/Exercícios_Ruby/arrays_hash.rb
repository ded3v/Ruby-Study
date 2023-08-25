#Exercício 1: Soma de Números
# Crie um programa que solicita ao usuário que insira 5 números inteiros e armazene-os em um array. Em seguida, calcule e exiba a soma desses números.

def array_sum(array)
  total = array.reduce(0) {|sum, num| sum + num}
  return total
end

array = []
(0..4).each_with_index do |elem, i|
  puts "Insira os números a serem somados: #{i+1}°"
  elem = gets.chomp.to_f
  array << elem
end

puts array.inspect
puts "soma total é: #{array_sum(array)}"

puts "------"

#Desenvolva um programa que recebe uma frase do usuário e conta quantas vezes cada letra (ignorando maiúsculas/minúsculas) aparece na frase.
# Armazene os resultados em um hash e exiba a contagem para cada letra.

def sum_letters(string)
  string = string.downcase
  string_sum = string.size
end

string = "Olá, estou mudando a minha vida"
puts sum_letters(string)

#agora colocando numa Hash

def count_letters(string)
  string = string.gsub(/[^a-zA-Z]/, '')
  letter_count = Hash.new(0)

  string.each_char do |char| #.each_char conta cada letra na string
    letter_count[char.downcase] += 1
  end

  return letter_count
end

string = "Olá, estou mudando a minha vida"
letter_counts = count_letters(string)

letter_counts.each do |letter, count|
  puts "#{letter}: #{count}"
end
puts "-------"

#Exercício 3: Encontrar Números Únicos
#
# Crie um programa que recebe um array de números inteiros. Encontre e exiba os números que aparecem apenas uma vez no array, sem repetições.

def find_unique_numbers(array)
  counts = Hash.new(0)

  array.each do |num| #técnica frequentemente usada para contar as ocorrências de dados
    counts[num] += 1
  end
  puts counts.inspect
  unique_numbers = []
  counts.each do |num, count|
    unique_numbers << num if count == 1
  end

  return unique_numbers
end

# Exemplo de uso
numbers = [1, 2, 3, 4, 5, 2, 3, 6]
unique_numbers = find_unique_numbers(numbers)

puts "Números únicos no array: #{unique_numbers}"
