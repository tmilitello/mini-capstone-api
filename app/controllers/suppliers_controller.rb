class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    render json: {message: @suppliers}
    # render template: "suppliers/index"
  end
end
