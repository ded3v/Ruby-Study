#ARRAYS

componentes = %w[memoriaDDR4_8gb ssd500gb RTX3040 monitor144hz ryzen5 motherboardMORTAR545]
componentes.insert(0, 'computer_case')

print componentes
puts

puts componentes[1..3] #intervalo crescente de um ponto a outro
puts

puts componentes[-4..-1].reverse #imprime no sentido contrário
puts

puts componentes.first
puts componentes.last

puts componentes.count #número de elementos no array

puts componentes.empty? #está vazio?

puts componentes.include?('RTX3040') #Este elemento compoe o array?

#componentes.delete_at(2) ##deletar o elemento da posição 2 do array

#HASH

compp_price = {case: '600', memoria: '300', ssd: '400', RTX: '2400', ryzen5: '800'}
compp_price[:monitor] = "1000" #adiciona ao hash uma chave e seu valor

puts compp_price

puts compp_price.keys #imprime apenas as chaves
puts compp_price.values #imprime apenas os valores das chaves

#comp_price.delete(:nome_da_chave) ##exclui a chave

puts compp_price[:memoria] #imprime o valor da chave selecionada
puts compp_price.size #quantidade de chaves da hash


