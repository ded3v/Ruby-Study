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




