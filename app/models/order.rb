class Order < ApplicationRecord
  belongs_to :user

  def subtotal
    return quantity * product.price #is this right?
  end
    
  def tax
    return subtotal * 0.05
  end

  def total
    return subtotal * tax
  end

end

