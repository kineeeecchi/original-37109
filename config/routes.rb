Rails.application.routes.draw do
  devise_for :users
  root to: "managements#index"
  resources :ingredients, only: [:index, :new, :create]
  resources :managements, only: [:index, :new, :create]
  resources :posts,       only: [:index, :new, :create]
end
