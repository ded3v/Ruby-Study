
seguradoras = %w(porto azul allianz tokio)
puts "Tipo da variável: #{seguradoras.class}"
puts "seguradoras do mês de agosto: #{seguradoras[0]}, #{seguradoras[1]}"

clientes_agosto = {cl1:'jose 01/08', cl2:'artur 02/08', cl3:'valdo 03/08', cl4:'sonia 04/08', cl5:'marta 05/08'}
puts "Tipo da variável: #{clientes_agosto.class}"
puts clientes_agosto[:cl1]


loop_counter = 0
while loop_counter < 3
  puts "Digite a seguradora para saber seus clientes: "
  seg_cliente = gets.chomp.downcase

  if seguradoras.include?(seg_cliente) #Procurar se a entrada corresponde ao dado da array
    if seg_cliente == seguradoras[0]
      puts "Os clientes deste mês da Porto são: #{clientes_agosto[:cl1]}, #{clientes_agosto[:cl2]}"
    elsif seg_cliente == seguradoras[1]
      puts "Os clientes deste mês da Azul são: #{clientes_agosto[:cl3]}, #{clientes_agosto[:cl4]}"
    elsif seg_cliente == seguradoras[2]
      puts "Os clientes deste mês da Azul são: #{clientes_agosto[:cl5]}"
    elsif seg_cliente == seguradoras[3]
      puts "Não há clientes cadastrados neste seguradora"
    end

    break #sai do loop após realizar a condição
    else
      puts "Seguradora incorreta, digite novamente"
      loop_counter += 1


  end

end