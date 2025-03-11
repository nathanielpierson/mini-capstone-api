Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "/products" => "products#index"
  get "/products/category/:id" => "products#show_cat"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"

  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers/new" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "suppliers/:id" => "suppliers#destroy"

  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"

  get "/images" => "images#index"
  patch "/images/:id" => "images#update"

  get "/users" => "users#index"
  post "/users" =>"users#create"

  get "/sessions" => "sessions#index"
  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"
  patch "/orders/:id" => "orders#update"
  delete "/orders/:id" => "orders#delete"

  get "/carted_products" => "carted_products#index"

  # Defines the root path route ("/")
  # root "posts#index"
end
