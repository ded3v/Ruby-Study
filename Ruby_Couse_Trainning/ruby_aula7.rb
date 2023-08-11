require_relative 'files_require/rotina'
require_relative 'files_require/detalhes_rotina'


rotina = Rotina.new
rotina1 = Acordar_detail.new
rotina2 = Alongar_detail.new
rotina3 = CorridaMatinal_detail.new


rotina.rotina
rotina1.acordar
puts
rotina2.alongar
puts
rotina3.corrida