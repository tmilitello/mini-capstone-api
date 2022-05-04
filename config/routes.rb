Rails.application.routes.draw do
  get "/available_products", controller: "products", action: "available_products_method"
  get "/one_product/:id", controller: "products", action: "show_one_product"
end

#get "/hello_path", controller: "example_pages", action: "hello_method"