#regular expressions

puts /by/ =~'ruby'
puts 'ruby' =~/by/

text = "How are you doing? i'm fine, and looking to be awesome 1239 times!"
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


puts Math.sqrt(8100)
puts Math.log10(100)
puts radian = 30 * (Math::PI / 180)
puts Math::E
puts Math::PI

#TIME
time = Time.now
puts time

puts time.strftime('%d/%m/%y')

puts time.saturday?

