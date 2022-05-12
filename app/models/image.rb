class Image < ApplicationRecord

  validates :url, presence: true
  validates :url, uniqueness: true
  validates :product_id, presence: true

end
