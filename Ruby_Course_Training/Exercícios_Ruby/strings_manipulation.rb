class Saudation
  def hello(name)
    puts "Olá #{name}"
  end
end

greetings = Saudation.new
puts greetings.hello("João")