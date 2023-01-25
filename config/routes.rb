Rails.application.routes.draw do
  devise_for :users

  # needs to be changed!
  root to: "lessons#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lessons do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index edit update destroy]
end
