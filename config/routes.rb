Rails.application.routes.draw do
  # get "/available_products", controller: "products", action: "available_products_method"
  # get "/one_product/:id", controller: "products", action: "show_one_product"
  
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

end

