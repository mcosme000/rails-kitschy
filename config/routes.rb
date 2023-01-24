Rails.application.routes.draw do
  devise_for :users

  # needs to be changed!
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lessons do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :edit, :update, :destroy]
end
