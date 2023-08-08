good_habits = ['sleep', 'exercise', 'read']

habit = 'study'

good_habits.each do |habit| #cria uma váriavel dentro mas não influencia em outras variáveis do mesmo nome
  puts habit
end

puts habit

puts

good_habits2 = {sleep: 'recovery', exercise: 'fortify', read: 'mind'}

good_habits2.each do |habit, improve|
  puts "#{habit} benefict: #{improve}"
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

