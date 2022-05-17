class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    render template: "products/index"
  end
  
  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    product = Product.create(
      name: params["name"],
      price: params["price"],
      inventory: params["inventory"],
      description: params["description"],
      supplier_id: params["supplier_id"]
    )

    if product.save
      @product = product
      render json: {message: product.as_json}
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
    pp current_user
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"]
    product.price = params["price"]
    product.image_url = params["image_url"]
    product.description = params["description"]

    if product.save
      product.save
      render json: {message: "Updated product!"}, new_product: product
    else 
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.destroy
    render json: {message: "deleted product"}
  end
end

