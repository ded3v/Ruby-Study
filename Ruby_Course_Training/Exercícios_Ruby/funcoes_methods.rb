#Exercício 1: Cumprimentando Funçã

def cheer (name)
  puts "Ola, #{name}! Espero que esteja tudo bem com você!"
end

puts cheer('André')

#ex2
#Exercício 2: Calculadora Simples

def calculadora(num1, operator, num2)
  case operator
  when "+"
    return num1 + num2
  when "-"
    return num1 - num2
  when "*"
    return num1 * num2
  when "/"
    return num1 / num2
  else
    return "Operador inválido"
  end
end


puts "Digite o primeiro número:"
number1 = gets.chomp.to_f

puts "Digite o operador (+, -, *, /):"
operator = gets.chomp

puts "Digite o segundo número:"
number2 = gets.chomp.to_f

resultado = calculadora(number1, operator, number2)
puts "Resultado: #{resultado}"


##MEDIA_NOTAS

def calc_media(notas)
  return 0 if notas.empty?

  total = notas.reduce(0.0) {|sum, nota| sum + nota} ## INteressante pontuar a função .reduce usado para somar termos de uma array por exemplo e sempre estruturado
  # em pelo menos dois parâmetros, geralmente o primero adotado como 'sum' que vai acumular os valores
  media = total/notas.length
  return media
end

notas1 = [9, 8, 8.5, 10]
puts calc_media(notas1)

puts "-------"

#Método 2, usando uma matriz:

# Defina os nomes das matérias e avaliações
materias = ["Português", "Matemática", "Física"]
avaliacoes = ["AV1", "AV2", "AV3"]

# Crie a matriz de notas
notas = []

materias.each do |materia|
  linha = []
  avaliacoes.each do |avaliacao|
    puts "Digite a nota de #{materia} - #{avaliacao}:"
    nota = gets.chomp.to_f
    linha << nota
  end
  notas << linha
end

# Imprime a matriz de notas
puts "Matriz de Notas:"
notas.each_with_index do |linha_notas, i|
  puts "#{materias[i]}: #{linha_notas.join(', ')}"
end

# Calcula e imprime as médias
puts "Médias:"
notas.each_with_index do |linha_notas, i|
  media = linha_notas.sum / avaliacoes.length
  puts "#{materias[i]}: #{media}"
end

puts "--------"

#Exercício 4: Verificador de Palíndromo
# Crie uma função chamada verificar_palindromo que recebe uma string como argumento e verifica se ela é um palíndromo (uma palavra que é lida da mesma forma de trás para frente,
# ignorando espaços e diferenciação entre maiúsculas e minúsculas).
# A função deve retornar true se a string for um palíndromo e false caso contrário.

def check_palindrome(string)
  string = string.downcase.gsub(" ", "")
  string == string.reverse
end

puts check_palindrome('ovo')
puts check_palindrome('palindrome')

puts "-----"

##Exercício 2: Contagem de Letras
def sum_letters(string)
  string = string.gsub(/[^a-zA-Z]/, '')
  string_sum = string.size
end

string = "Olá, estou mudando a minha vida"
puts sum_letters(string)

