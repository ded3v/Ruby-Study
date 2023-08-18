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
