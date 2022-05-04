class ProductsController < ApplicationController
  def available_products_method
    display_products = Product.all
    render json: display_products.as_json
  end
end
