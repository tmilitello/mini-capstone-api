Rails.application.routes.draw do
  # get "/available_products", controller: "products", action: "available_products_method"
  # get "/one_product/:id", controller: "products", action: "show_one_product"
  
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/orders" => "orders#create"
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"

end

# 5) Add backend code for the orders index action. Be sure to only return orders for the current user!
