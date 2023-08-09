def signal(color = 'vermelho')
  puts "O sinal está #{color}"
end

signal

color = 'verde'
signal(color)

#ou simplesmente
signal('verde') #atribui a variável diretamente dentro da função

def signal(color = 'vermelho')
  return 'Sinal quebrado'  #OBS O programa para no return
  puts "O sinal está #{color}"
end

puts signal #e retorna aqui o que foi atribuido a ele

puts

#MISSÃO ESPECIAL

#1 Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.


#2 Siga a documentação da gem cpf_cnpj para criar um programa que recebe como entrada um número de cpf e em um método verifique se este número é válido.

require "cpf_cnpj"

puts "DIgite o cpf para ser veríficado:"

def validate_cpf
  cpf_cliente = gets.chomp
  if CPF.valid?(cpf_cliente, strict: true)

    puts "CPF Válido!"
  elsif
    puts "CPF Inválido"
  end

end

validate_cpf

