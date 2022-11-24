Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :offers do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :destroy]

  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get 'profile', to: 'pages#profile', as: :profile
end
