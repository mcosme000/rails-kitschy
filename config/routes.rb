Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Defines the root path route ("/")
  resources :lessons do
    resources :reviews,  only: %i[new create]
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index edit update destroy]
  resources :bookings do
    member do
      get :accept, :cancel, :reject, :end
    end
  end
  get '/profile', to: 'users#profile'
  resources :reviews, only: %i[edit update destroy]
end
