class Product < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :price, presence: true
  validates :description, length: { in: 10..500 }
  validates :description, presence: true


  def is_discounted?

    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def images
    Image.where(product: id)
  end
  
end





