Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :offers do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings do
    resources :reviews, only: [:new, :create]
  end


  resources :bookings, only: [:show, :edit, :update, :destroy] do
    member do
      post :accept
      post :decline
    end
  end


  resources :reviews, only: [:show, :destroy]

  resources :bookings, only: :show

  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get 'profile', to: 'pages#profile', as: :profile

end
