class Product < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :price, presence: true
  validates :description, length: { in: 10..500 }
  validates :description, presence: true
  has_many :images
  belongs_to :supplier
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products


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

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end

  # def categories
  #   categories_arry = []
  #   category_products.each do |category_product|
  #     categories_arry << category_product.category
  #   end
  #   return categories_arry
  # end
  
end





