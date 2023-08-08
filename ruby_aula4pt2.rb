good_habits = ['sleep', 'exercise', 'read']

habit = 'study'

good_habits.each do |habit| #cria uma váriavel dentro mas não influencia em outras variáveis do mesmo nome
  puts habit
end

puts habit

puts

good_habits2 = {sleep: 'recovery', exercise: 'fortify', read: 'mind'}

good_habits2.each do |habit, improve|
  puts "#{habit} benefict: #{improve}"
end

