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

##########3Exercício 2: Verificador de Número Primo##################
# Crie um programa que solicita ao usuário um número inteiro positivo e verifica se ele é um número primo ou não.
# Um número primo é aquele que só é divisível por 1 e por ele mesmo.

num = 0
puts "Digite um número para saber se é primo"
num = gets.chomp.to_i
while num <= 0
  num = gets.chomp.to_i
  puts "Número deve ser positivo e maior que 0"
end

k=0
for i in 2..num # o i percorre assumindo os valores de 2 ao num
  if num % i == 0
    k = k + 1
  end
end
if k == 1
  puts "Número #{i} primo"

else
  puts "Número #{i}  não é primo"
end

#método 2

is_prime = true
#Aqui o código fica mais enxuto, pois se leva em consideração calcular até o quadrado do número (pq após ele o quadro lógico se repete), diminuindo processamento
for i in 2..Math.sqrt(num)
  if num % i == 0
    is_prime = false
    break
  end
end

if is_prime && num > 1
  puts "Número #{num} primo"
else
  puts "Número #{num} não é primo"
end

#Treino LOOPS ANINHADOS
######TABULEIRO XADREZ######

letter_board = %w[H G F E D C B A]
number_board = %w[1 2 3 4 5 6 7 8]

for i in 0..7 do
  for j in 0..7
    print letter_board[i] + number_board[j] + " "
  end
  puts
end

puts"-----"
puts"-----"

#MÉTODO 2

letter_board = %w[H G F E D C B A]
number_board = %w[1 2 3 4 5 6 7 8]

for i in letter_board do
  for j in number_board
    print i + j + " "
  end
  puts
end

puts"-----------"
##SEQUENCIA FIBONNACI
puts "Faça a sequencia de Fibonacci"
fibo = [1, 1]  # Começamos com os dois primeiros termos da sequência

for a in 2..9 do
  next_term = fibo[a-1] + fibo[a-2]  # O próximo termo é a soma dos dois anteriores
  fibo.push(next_term)
end

print fibo
