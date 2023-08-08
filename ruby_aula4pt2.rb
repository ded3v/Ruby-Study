good_habits = ['sleep', 'exercise', 'read']

habit = 'study'

good_habits.each do |habit| #cria uma váriavel dentro mas não influencia em outras variáveis do mesmo nome
  puts habit
end

puts habit

puts

good_habits2 = {sleep: 'recovery', exercise: 'fortify', read: 'mind'}

good_habits2.each do |habit, improve|
  puts " Hábit: #{habit}, Improves: #{improve}"
end


#MAP

array = [2, 4, 6, 9] #lembrando que números devem entrar sem '', caso contrário será uma string

new_array = array.map do |a|
  a * 2
end

#>>> Para sobrescrever um array existente usa-se a estrutura array.map! do |a|

puts "#{new_array}"

#Escolhendo os elementos da array e manipulando:

selection = new_array.select do |a|
  a >= 6
end

puts "#{selection}"
puts

#Selection no Hash

habits2 = good_habits2.select do |key, value|
  good_habits2.keys.index(key) > good_habits2.keys.index(:sleep)  #Aqui pegamos todas as chaves da hash e condicionamos para selecionar as chaves após a chave ':sleep'
end

puts habits2


###MISSOES ESPECIAIS DA AULA####

#1 Utilizando uma collection do tipo Array, escreva um programa que receba 3 números e no final exiba o resultado de cada um deles elevado a segunda potência.

numeros = [3, 3.5, 9]

puts "Números iniciais: #{numeros}"

novo_numeros = numeros.map do |a|
  a**2
end

puts "Os números ao quadrado são: #{novo_numeros}"

#2 Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor. No final do programa para cada um desses elementos imprima a frase:
# “Uma das chaves é **** e o seu valor é ****”

good_habits2 = {sleep: 'recovery', exercise: 'fortify', read: 'mind'}

good_habits2.each do |habit, improve|
  puts " Uma das chaves é: #{habit}, e o seu valor é: #{improve}"
end


#3 Dado o seguinte hash:
# Numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}
# Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante.

#METODO 1 - Escolhendo diretamente o valor maior
Numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}

most_value_key = Numbers.select do |keys, value|
  value == 30

end

puts most_value_key
puts

#METODO 2 - Buscando o valor maior (digamos que não sabemos os valores da hash)

max_value = Numbers.values.max  #Encontra o maior valor na hash

most_value_key = Numbers.select do |key, value|
  value == max_value
end

puts "Chave com o maior valor:"
puts most_value_key






