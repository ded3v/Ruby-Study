module Reverse_Numbers   #inversor de arrays/Hash
  def self.puts(data)
    if data.is_a?(Array)
      print data.reverse
    elsif data.is_a?(Hash)
      print data.invert
    else
      puts "Unsupported data type"
    end
  end
end

hash = { a: 1, b: 2 }
Reverse_Numbers::puts([1, 2, 3])
Reverse_Numbers::puts hash

puts

#missao 1


module Capitalize
  Lambda_capitalize = ->(name) {puts name.capitalize}

  def self.capitalize_name(lambda_capitalize)
    lambda_capitalize.call('andre')
    lambda_capitalize.call('costa')
  end
end

Capitalize.capitalize_name(Capitalize::Lambda_capitalize)

#####SEM O MODULE######
lambda_capitalize = ->(name) {puts name.capitalize}

def self.capitalize_name(lambda_capitalize)
  lambda_capitalize.call('andre')
  lambda_capitalize.call('costa')
end

capitalize_name(lambda_capitalize)

puts "----"
#Missão 2

module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts 'Pessoa Jurídica Adicionada'
      puts "Nome: #{@name}"
      puts "cnpj: #{@cnpj}"
    end
  end

    class Physical
      def initialize(name, cpf)
        @name = name
        @cpf = cpf
      end

      def add
        puts "Pessoa Física Adicionada"
        puts "nome: #{@name}"
        puts "Cpf: #{@cpf}"
      end
    end
  end

  Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
puts"----"
  Person::Physical.new('André Costa', '222.222.222-22').add

#Mesmo código mas com verificação de cpf/cnpj
  # require "cpf_cnpj"
# module Person
#   class Physical
#     def initialize(name, cpf)
#       @name = name
#       @cpf = cpf
#     end
#
#     def add
#       puts "Nome e cpf do usuário"
#       puts "nome: #{@name}"
#       puts "Cpf: #{@cpf}"
#
#     if CPF.valid?(@cpf, strict: true)
#
#       puts "CPF Válido!"
#     elsif
#     puts "CPF Inválido"
#       end
#     end
#   end
# end
#
# Person::Physical.new('André', '22222222222').add

#MISSÃO 3

#Proc:
# Um Proc é um objeto que contém um bloco de código. Ele pode ser criado usando a classe Proc ou usando a sintaxe especial proc { ... }.
# Aqui está um exemplo de como criar e usar um Proc:
# my_proc = Proc.new { puts "Hello from Proc!" }
# my_proc.call

#Diferenças notáveis do Proc:
#
# Flexibilidade de Argumentos: Um Proc é mais flexível em relação aos argumentos que recebe.
# Se você chamar um Proc com mais ou menos argumentos do que o necessário, não causará um erro.
#
# Uso do return: O return dentro de um Proc faz com que o código retorne imediatamente do método onde o Proc foi chamado.
#
# Lambda:
# Um lambda também é um objeto que encapsula um bloco de código, mas ele é mais estrito quanto a argumentos e ao uso do return.
# Você pode criar um lambda usando a palavra-chave lambda ou usando a sintaxe -> { ... }.
# Aqui está um exemplo de como criar e usar um lambda:
# my_lambda = lambda { puts "Hello from Lambda!" }
# my_lambda.call
# Diferenças notáveis do lambda:
#
# Estrito em Relação a Argumentos: Um lambda é mais rigoroso em relação aos argumentos que recebe. Se você chamar um lambda com um número incorreto de argumentos, ele causará um erro.
#
# Comportamento do return: O return dentro de um lambda se comporta como se fosse dentro de um método, ou seja, ele retorna o valor do lambda sem sair do método que o chamou.
#
# Para resumir, a principal diferença entre Proc e lambda reside em como eles tratam os argumentos e o uso do return.
# Em muitos casos, eles podem ser intercambiáveis, mas é importante entender as diferenças para evitar comportamentos inesperados.
# Em geral, se você precisa de um bloco mais estrito com relação a argumentos e return, lambda é uma escolha mais segura.
# Se você precisa de mais flexibilidade, Proc pode ser a melhor opção.

