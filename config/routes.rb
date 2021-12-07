Rails.application.routes.draw do
  devise_for :users
  root to: "managements#index"
  resources :ingredients, only: [:index, :new, :create]
  resources :managements, only: [:index, :new, :create, :show, :destroy]
  resources :aims,        only: [:new, :create, :edit, :update]
  resources :posts do
    resources :comments, only: :create
  end
  resources :quizzes,     only: [:index, :new, :create]
end
