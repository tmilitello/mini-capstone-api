class ProductsController < ApplicationController

  def index
    all_products = Product.all
    render json: all_products.as_json
    #what do i do here?
  end
  
  def show
    one_product = Product.find_by(id: params["id"])
    render json: one_product.as_json
  end

  def create
    new_product = Product.create(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    render json: new_product.as_json
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"]
    product.price = params["price"]
    product.image_url = params["image_url"]
    product.description = params["description"]

    product.save
    render json: {message: "Updated product!"}
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.destroy
    render json: {message: "deleted product"}
  end
end

