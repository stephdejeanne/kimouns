Rails.application.routes.draw do
  devise_for :users

  get 'offers/index'
  get 'offers/show'
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
