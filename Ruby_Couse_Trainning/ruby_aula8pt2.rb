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

# module Person
#   class Juridic
#     def initialize(name, cnpj)
#       @name = name
#       @cnpj = cnpj
#     end
#
#     def add
#     puts 'Pessoa Jurídica Aidcionada'
#     puts "Nome: #{@name}"
#     puts "cnpj: #{@cnpj}"
#     end
#   end
# end
#
# Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add


#Missão 3
require "cpf_cnpj"
module Person
  class Juridic
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts "Nome e cpf do usuário"
      puts "nome: #{@name}"
      puts "Cpf: #{@cpf}"

    if CPF.valid?(@cpf, strict: true)

      puts "CPF Válido!"
    elsif
    puts "CPF Inválido"
      end
    end
  end
end

Person::Juridic.new('André', '22222222222').add

