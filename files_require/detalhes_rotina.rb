
class Acordar_detail < Acordar
  def acordar
    puts "Ao acordar:"
    super
    puts "Lembre de sentir gratidão por mais um dia, medite nas suas crenças, reviva seu propósito."
   end
end


class Alongar_detail < Alongar
  def alongar
    puts "Durante o alongamento:"
    super
    puts "Lembre-se de se concentrar em cada movimento, alinhando calma e serenidade ao estado de espírito."
  end
end

class CorridaMatinal_detail < CorridaMatinal
  def corrida
    puts "Na corrida:"
    super
    puts "Concentração é o maior aliado da corrida, alinhando a respiração ao ritmo dos passos."
  end
end