#ESCOPO DE VARIÁVEIS

#Variáveis tipo classe

class ClassType
  def classT    #ACESSADA APENAS CHAMANDO O MÉTODO DA FUNÇÃO
    val = 2
  end

end

#VARIAVEIS TIPO GLOBAL

class Bar
  def foo
    $global = 0
    puts $global  #podem ser chamadas de qualquer lugar portanto é FORTEMENTE NÃO RECOMENDADO O USO DEVIDO A BUGS e DIFICULDADE DE RASTREA-LO
  end
end

class Baz
  def qux
    $global += 1
    puts $global
  end
end

bar = Bar.new
baz = Baz.new
bar.foo
baz.qux
baz.qux
puts $global

bar.foo
$global = 10
baz.qux
puts $global
baz.qux
puts $global

