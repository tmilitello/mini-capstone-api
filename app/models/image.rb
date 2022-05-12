class Image < ApplicationRecord

  validates :url, presence: true
  validates :product_id, presence: true

  def product
    Product.where(id: product_id)
  end

end
