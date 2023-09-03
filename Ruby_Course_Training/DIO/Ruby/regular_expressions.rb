#regular expressions

puts /by/ =~'ruby'
puts 'ruby' =~/by/

text = "How are you doing? i'm fine, and looking to be awesome 1239 times!"
find_data = /looking/.match(text)
puts find_data
puts find_data.pre_match
puts find_data.post_match