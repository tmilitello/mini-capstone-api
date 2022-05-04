Rails.application.routes.draw do
  get "/available_products", controller: "products", action: "available_products_method"
end

#get "/hello_path", controller: "example_pages", action: "hello_method"