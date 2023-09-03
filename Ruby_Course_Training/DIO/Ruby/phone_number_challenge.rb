puts "Algoritmo para capturar telefone "
def validate(msg)
  patt = /\b?\(?\d{2}\)? ?\d ?\d{4}-?\d{4}\b/
  if number = msg.match(patt)
    puts "Número #{number} está dentro do padrão:"
  else
    puts "Padrão incorreto, digite novamente"
  end

end

msg = "Olá, tudo bem? Meu whats app é (99) 9 93211234"
puts validate(msg)
