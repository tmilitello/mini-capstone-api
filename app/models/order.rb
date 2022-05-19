class Order < ApplicationRecord
  has_many :carted_products
  belongs_to :user

  # def subtotal
  #   return carted_products.quantity * product.price 
  # end
    
  # def tax
  #   return subtotal * 0.05
  # end

  # def total
  #   return subtotal + tax
  # end

end

