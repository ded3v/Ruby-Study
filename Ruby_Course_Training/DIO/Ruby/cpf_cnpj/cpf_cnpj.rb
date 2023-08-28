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