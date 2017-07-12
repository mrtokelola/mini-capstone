Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  post "/products" => "product#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
end
