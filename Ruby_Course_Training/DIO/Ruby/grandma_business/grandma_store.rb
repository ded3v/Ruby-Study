
class Store
  def initialize(product, price)
    @product = product
    @price = price
  end

  def buy
    puts "Você comprou o produto #{@product}, pelo valor de #{@price}"
  end
end