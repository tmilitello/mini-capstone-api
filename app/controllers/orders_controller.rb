class OrdersController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def create
    #carted_products = current_user.carted_products
    status_carted = CartedProduct.where(status: "carted")
    order = Order.create(
      user_id: current_user.id,
      subtotal: 100,
      tax: 100 * 0.05 ,
      total: 105
    )
    render json: {message: order }
  end

#   Find all the current user's carted products with a status of "carted"
# Create a new order with user_id, subtotal, tax, and total (this will require a loop to calculate)
# # Modify the carted products to change the status to "purchased" and the order_id to the new order's id

  def index
    if current_user
      @orders = current_user.orders
      render template: "orders/index"
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: {message: order}
  end

end


