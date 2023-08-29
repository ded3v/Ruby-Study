def sum_even_indices(list1, list2)
  result = []

  (0...list1.length).each do |i|
    if i.even?  # Verifica se o índice é par
      sum = list1[i] + list2[i]
      result << sum
    end
  end

  return result
end

# Recebe as entradas do usuário e converte para arrays de inteiros
input1 = gets.chomp.split(', ').map(&:to_i)
input2 = gets.chomp.split(', ').map(&:to_i)

# Chama a função e imprime o resultado
result = sum_even_indices(input1, input2)
puts result.join(', ')  # Imprime a nova lista como string

puts "----------"

def calcular_preco_gas(preco, imposto_variavel, valor_imposto_variavel)
  imposto_fixo = preco * 0.10
  preco_total = preco + imposto_fixo

  if imposto_variavel == 1
    preco_total += preco_total * (valor_imposto_variavel / 100.0)
  end

  return preco_total
end

# Recebe as entradas do usuário
preco_gas = gets.chomp.to_f
imposto_variavel = gets.chomp.to_i
valor_imposto_variavel = gets.chomp.to_f

# Chama a função para calcular o preço total
preco_total = calcular_preco_gas(preco_gas, imposto_variavel, valor_imposto_variavel)

# Imprime a frase com o preço total
if preco_total.to_i == preco_total
  puts "O preço do gás nesse mês é de R$#{preco_total.to_i}"
else
  puts "O preço do gás nesse mês é de R$#{preco_total}"
end

puts "------"


offset = gets.to_i
limit = gets.to_i

API_RETURN = [
  {title: "Omelete",
   ingredients: "Ovo, salsinha, sal, queijo",
   recipe: "Quebre os ovos e os bata até ficar bem amarelinho. Em seguida misture a salsinha, o queijo e o sal a gosto. Leve ao fogo."
  },
  {title: "Bolo de Chocolate",
   ingredients: "Farinha, ovos, açúcar, chocolate em pó, óleo, fermento, leite",
   recipe: "Misture a farinha, o açúcar e o chocolate em pó. Em seguida misture o leite, o óleo e os ovos. Após isso, misture os secos e os molhados e mexa bem. Para finalizar adicione o fermento, homogenize e leve ao forno."
  },
  {title: "Brigadeiro",
   ingredients: "Leite condensado, manteiga, chocolate em pó",
   recipe: "Em uma panela misture todos os ingredientes. Misture tudo em fogo baixo sem parar de mexer, principalmente o que estiver no fundo para não queimar."
  },
  {title: "Pão Caseiro",
   ingredients: "Farinha, leite morno, água morna, óleo, açúcar, sal, ovos, fermento biológico",
   recipe: "Misture o fermento com o açúcar, o sal, os ingredientes líquidos, os ovos e misture bem. Acrescente aos poucos a farinha e sove bem a massa formada. Deixe descansar por 1 hora, separe em pedaços e leve ao forno."
  },
  {title: "Carne de Hamburguer",
   ingredients: "Carne moída, sal, cebola, alho, oregano, ovo",
   recipe: "Misture o ovo com a carne moída, o sal, o oregano. Acrescente o alho e a cebola refogados. Modele os bifes e leve a frigideira."
  },
  {title: "Camafel Simples",
   ingredients: "Leite condensado, manteiga, leite, nozes",
   recipe: "Misture o leite condensado, a manteiga e o leite e leve ao fogo baixo e mexendo sem parar. Quando chegar ao ponto soltando da panela acrescente as nozes trituradas."
  }
]

(API_RETURN[offset..limit]).each do |receita|
  puts receita[:title]
  puts receita[:ingredients]
  puts receita[:recipe]
  puts
end
