#Crie um programa que solicita ao usuário dois números e realiza a divisão entre eles.
# Utilize a estrutura begin, rescue e ensure para lidar com possíveis erros, como divisão por zero, exibindo uma mensagem apropriada.

begin
  puts "Digite o primeiro número:"
  num1 = gets.chomp.to_f

  puts "Digite o segundo número:"
  num2 = gets.chomp.to_f

  result = num1 / num2

  puts "Resultado da divisão: #{result}"
rescue ZeroDivisionError
  puts "Erro: Divisão por zero não é permitida."
rescue StandardError => e
  puts "Ocorreu um erro: #{e.message}"
ensure
  puts "Fim do programa."
end

puts "------"

#Desenvolva um programa que lê o conteúdo de um arquivo especificado pelo usuário.
# Utilize begin, rescue e ensure para lidar com possíveis erros de abertura de arquivo e exiba uma mensagem adequada em caso de erro.

begin
  puts "Digite o nome do arquivo:"
  filename = gets.chomp

  file = File.open(filename, "r")

  puts "Conteúdo do arquivo:"
  puts file.read
rescue Errno::ENOENT
  puts "Erro: Arquivo não encontrado."
rescue StandardError => e
  puts "Ocorreu um erro: #{e.message}"
ensure
  file.close if file
  puts "Fim do programa."
end

puts "-----"

#Crie um programa que solicita ao usuário que insira um número.
# Utilize a estrutura begin, rescue e ensure para garantir que o programa possa lidar com erros de conversão de tipo (por exemplo, se o usuário inserir uma string ao invés de um número)
# e exiba uma mensagem apropriada.

def verify_number
  begin
    puts "DIgite um número inteiro"
    input = gets.chomp
    number = Integer(input) #converte uma string em um número inteiro
    puts "Você digitou o número #{number}"

  rescue ArgumentError
    puts "Erro de conversão: Valor não é um inteiro válido"
  ensure
    puts "Fim de Programa!"
  end
end

verify_number

#Exercício 4: Acesso a Elementos de Array
#
# Desenvolva um programa que solicita ao usuário que insira um índice e um array.
# Utilize begin, rescue e ensure para lidar com possíveis erros de acesso a elementos do array (como um índice fora dos limites do array)
# e exiba uma mensagem adequada em caso de erro.

def verify_array
  begin
    array = [1, 2]
    puts "Escolha a opção de 1 - 2"
    choose = gets.chomp.to_i
    if array.include?(choose)
      puts "Opção válida"
      case choose
      when 1
        puts "Pacote simples"
      when 2
        puts "Pacote completo"
      end
    else
      puts "Escolha inválida"
    end
  rescue ArgumentError => e
    puts e.message

  ensure
    puts "FIM DE PROGRAMA!"
  end
end

verify_array