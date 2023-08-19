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

puts "Capture os emails do texto:"

texts = "asdfg@exemp.com, ou tbm qwer@hot.com.br, ou trewq@cresca.com"
emails = texts.scan(/\b[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b/)
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

