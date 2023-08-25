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

puts "--------"

#Exercício 4: Gerenciamento de Estoque:
# Crie um sistema de gerenciamento de estoque. Você terá um hash que representa o estoque de produtos,
# onde as chaves são os nomes dos produtos e os valores são as quantidades em estoque.
# O programa deve permitir ao usuário adicionar ou remover itens do estoque e atualizar as quantidades.
class Instrumento
  attr_accessor :name, :quant

  def initialize(name , quant)
    @name = name
    @quant = quant
  end

end

products = {}
stock = {violao: 2, guitarra: 3, bateria: 1}

stock.each do |item, quant|
  products[item] = Instrumento.new(item, quant)
end

puts "Estoque inicial:"
products.each do |item, instrumento|
  puts "#{item}: #{instrumento.quant}"
end

puts "\nAdicionar ou remover itens?"
action = gets.chomp.downcase

case action
when "adicionar"
  puts "Nome do instrumento:"
  item_name = gets.chomp.to_sym
  puts "Quantidade:"
  item_quant = gets.chomp.to_i
  if products.key?(item_name)
    products[item_name].quant += item_quant
  else
    products[item_name] = Instrumento.new(item_name, item_quant)
  end
when "remover"
  puts "Nome do instrumento:"
  item_name = gets.chomp.to_sym
  if products.key?(item_name)
    puts "Quantidade:"
    item_quant = gets.chomp.to_i
    products[item_name].quant -= item_quant
  else
    puts "Instrumento não encontrado no estoque."
  end
else
  puts "Ação Inválida"
end

puts "\nEstoque atualizado:"
products.each do |item, instrumento|
  puts "#{item}: #{instrumento.quant}"
end


