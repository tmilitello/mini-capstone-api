class ProductsController < ApplicationController
  def available_products_method
    display_products = Product.all
    render json: display_products.as_json
  end
  
  def show_one_product
    one_product = Product.find_by(id: params["id"])
    render json: one_product.as_json
  end
end
