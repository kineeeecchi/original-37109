Rails.application.routes.draw do
  devise_for :users
  root to: "managements#index"
  resources :ingredients, only: [:index, :new, :create]
  resources :managements, only: [:index, :new, :create]
  resources :aims,        only: [:new, :create]
  resources :posts do
    resources :comments, only: :create
  end
  resources :quizzes,     only: [:index, :new, :create]
end
