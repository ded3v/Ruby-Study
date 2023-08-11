#Criação do sistema de notas de um caixa eletrônico



loop do
  puts "Valores disponíveis para sacar: "
  puts "10, 20, 50, 100, 150, 180, 240, 320"
  puts "Caso não queira sacar digite 0 para sair"
  valor_inserido = gets.chomp.to_i
  if valor_inserido == 0
    puts "Programa encerrado"
    break
  end

  unless [10, 20, 50, 100, 150, 180, 240, 320].include?(valor_inserido)
    puts "Valor não aceito pelo caixa-eletrônico, insira um valor correspondente!:"
    next
  end

  puts "As notas a receber de 50 reais: #{valor_inserido/50}"
  puts "de 20 reais: #{valor_inserido%50/20}"
  puts "de 10 reais: #{valor_inserido%50%20/10}"

  puts""
  next


end