Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Defines the root path route ("/")
  resources :lessons do
    collection do
      get :my_lessons
    end
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index edit update destroy]
  resources :bookings do
    member do
      get :cancel
    end
  end
end
