#REGEX - Validar entrada de dados ou fazer busca e extração

text = "How are you doing? i'm fine, and looking to be awesome 1239!"
find_data = /looking/.match(text)
puts find_data
puts find_data.pre_match
puts find_data.post_match

find_data = /[2-9]/.match(text)
puts find_data

text = "Contate joao@example.com, maria@test.com, ou joao@ex.com.br para mais informações."
emails = text.scan(/\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b/)
puts emails

puts

puts "Capture os emails do texto: asdfg@exemp.com, ou tbm qwer@hot.com.br, ou trewq@cresca.com "

texts = "asdfg@exemp.com, ou tbm qwer@hot.com.br, ou trewq@cresca.com"
emails = texts.scan(/\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b/)
puts emails
puts "----"

puts "Verifique se os telefones estão nos formatos válidos: "

def valid_phone_number?(number)
  pattern = /^\d{2}-?\d{5}-?\d{4}$/
  if pattern.match?(number)
    puts "Número aceito: #{number}"
  else
    puts "Formato do número incorreto"
  end
end


puts valid_phone_number?("81999999999")

puts "----"

puts "Algoritmo para capturar telefone "
def validate(msg)
  patt = /\b?\(?\d{2}\)? ?\d ?\d{4}-?\d{4}\b/
  if number = msg.match(patt)
    puts "Número dentro do padrão"
  else
    puts "Padrão incorreto, digite novamente"
  end
  number
end

msg = "Olá, tudo bem? Meu whats app é (99) 7 43211234"
puts validate(msg)

puts "-----"

puts "Extraia as datas da mensagem"

def extract_text(text)
  pattern = /\b\d{2}\/\d{2}\/\d{4}/
  dates = text.scan(pattern)
end

text = "As datas comemorativas serão 10/12/2023 e 31/12/2023"
puts extract_text(text)

puts "Verificação de Password com os critérios:
- Pelo menos 8 caracteres de comprimento.
- Pelo menos uma letra minúscula.
- Pelo menos uma letra maiúscula.
- Pelo menos um dígito.
- Pelo menos um caractere especial entre @$!%*?&."

def strong_password?(password)
  pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
  pattern.match?(password)
end

puts strong_password?("P@ssw0rd") # true
puts strong_password?("12345678") # false

puts "-----"
####TIME

time = Time.now
puts time.strftime('%d/%m') #strftime formata a hora
puts time.saturday?

###method_missing
class Play_Guitar
  def method_missing(method_name)
    puts "Método #{method_name} não encontrado ou não existe"
  end

  def Play
    puts "Zieamm zumm pemmm"
  end
end

playing = Play_Guitar.new
playing.Play
playing.strike
puts"----"

puts "Em uma classe chamada Carro, crie um método público chamado get_km que recebe como parâmetro a seguinte informação “Um fusca de cor amarela viaja a 80km/h ”.
O método get_km deve chamar um método privado com o nome de find_km. Este deve localizar e retornar o casamento de padrão 80km/h.
No final, imprima este retorno. "
class Car
  def get_km(speed)
    km = find_km(speed)
    puts km
  end

  private
  def find_km(speed)
    pattern = /\d{2,}km\/h/
    match_speed = speed.match(pattern)

  end
end

speed = "Um fusca de cor amarela viaja a 80km/h"
car = Car.new
puts "Saída: "
car.get_km(speed)