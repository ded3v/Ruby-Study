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
