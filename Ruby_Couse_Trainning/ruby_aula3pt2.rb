#Programa para calcular CONTA DE BAR

result = ''
result2 = ''
loop do
  while true
    print "Os 10% de serviço serão pagos? (1 - Sim, 2 - Não): "
    option = gets.chomp.to_i

    break if option == 1 || option == 2

    puts "Opção inválida. Por favor, digite 1 para Sim ou 2 para Não."
  end


  puts "Digite o valor da conta total: "
  conta_total = gets.chomp.to_f
  puts "Digite quantas por pessoas será dividida a conta: "
  pessoas = gets.chomp.to_i

  servico = (conta_total*0.1)/pessoas

  if option == 1
    result = conta_total/pessoas + servico
    print "A conta por pessoa + o serviço é #{result}"

  elsif option == 2
    result2 = conta_total/pessoas
    print "A conta por pessoa é #{result2}"




  end

  break

end
