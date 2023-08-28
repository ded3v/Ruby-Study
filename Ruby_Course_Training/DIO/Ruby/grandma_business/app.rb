require_relative 'products'
require_relative 'grandma_store'

product = Product.new
product.name = "Forma para bolo redonda"
product.price = "R$14,99"

product1 = Product.new
product1.name = "Kit ingredientes (trigo, margarina, açúcar)"
product1.price = "R$20"

Store.new(product.name, product.price).buy
Store.new(product1.name, product1.price).buy