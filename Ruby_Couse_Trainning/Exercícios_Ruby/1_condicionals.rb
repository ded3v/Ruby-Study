#Exercício 1: Calculadora de IMC
#
# Crie um programa que recebe o peso e a altura de uma pessoa, calcula o Índice de Massa Corporal (IMC) e informa em qual faixa o IMC se encontra, de acordo com a tabela:
#
# Abaixo de 18.5: Abaixo do peso
# 18.5 a 24.9: Peso normal
# 25.0 a 29.9: Sobrepeso
# 30.0 a 34.9: Obesidade grau 1
# 35.0 a 39.9: Obesidade grau 2
# Acima de 40: Obesidade grau 3

puts "Digite o peso"
peso = 95
puts "Digite a altura"
altura = 1.80
imc = peso/(altura*altura)
puts "Seu IMC é #{imc}"

case imc
when 0..18.5
  puts "Abaixo do Peso"
when 18.5..24.9
  puts "Peso normal"
when 25...29.9
  puts "Sobrepeso"
when 30..34.9
  puts "Obesidade grau 1"
when 35..39.9
  puts "Obesidade grau 2"
else
  puts "Obesidade grau 3"
end