# chamadas/array
# usei inicialmente o array: seguradoras = ['porto', 'azul', 'allianz', 'tokio'], mas é recomendando no array de strings usar %w()
seguradoras = %w(porto azul allianz tokio)
puts "Tipo da variável: #{seguradoras.class}"
puts "seguradoras do mês de agosto: #{seguradoras[0]}, #{seguradoras[1]}"

clientes_agosto = {cl1:'jose 01/08', cl2:'artur 02/08', cl3:'valdo 03/08', cl4:'sonia 04/08', cl5:'marta 05/08'}
puts "Tipo da variável: #{clientes_agosto.class}"
puts clientes_agosto[:cl1]


# Operações Básicas
print 'Agora alguns exemplos de operações com Ruby '
print "Digite o primeiro número: "
number1 = gets.chomp.to_f
print "Digite o segundo número: "
number2 = gets.chomp.to_f

puts number2*number1
puts number1 ** number2