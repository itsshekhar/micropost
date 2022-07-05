Rails.application.routes.draw do
  resources :users
  resources :micro_posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "micro_posts#index"
end
