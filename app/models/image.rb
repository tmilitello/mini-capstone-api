class Image < ApplicationRecord

  validates :url, presence: true
  validates :product_id, presence: true
  belongs_to :product

  def product
    Product.where(id: product_id)
  end

end
