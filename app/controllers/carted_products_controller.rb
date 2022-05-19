class CartedProductsController < ApplicationController

  def index
    # if current_user
      cp1 = current_user.carted_products
      render json: {message: cp1}
      #render template: "carted_products/index"
    # else
    #   render json: [], status: :unauthorized
    # end
  end

  def create
    cp1 = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id]
    )

    render json: {message: cp1}
  end

end
