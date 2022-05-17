class OrdersController < ApplicationController

  def create
    order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]
    )
    render json: {message: order }
  end

  def index
    user = current_user
    orders = user.orders
    render json: {message: orders}
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: {message: order}
  end

end

# 2) Add backend code for the orders create action. Note that an order has the following attributes: user_id, product_id, quantity, subtotal, tax, and total. Assume the user will provide the product id and quantity in params. For now, only save the user_id, product_id, and quantity (we’ll come back to the remaining attributes in a bit).
# 3) Add a frontend requests.http request for Orders create (with parameters for product_id and a quantity). Be sure to provide an appropriate JWT in the request headers!

# create_table "orders", force: :cascade do |t|
#   t.integer "user_id"
#   t.integer "product_id"
#   t.integer "quantity"
#   t.decimal "subtotal", precision: 9, scale: 2
#   t.decimal "tax", precision: 9, scale: 2
#   t.decimal "total", precision: 9, scale: 2
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
