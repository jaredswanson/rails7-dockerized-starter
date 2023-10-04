require 'sidekiq/web'

Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'

  # Defines the root path route ("/")
  root to: "home#index"
end
