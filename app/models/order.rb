class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :product_id, presence: true
  validates :quantity, presence: true

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

