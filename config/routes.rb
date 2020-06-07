Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # devise_for :admins
  root to: "users#index"
  namespace :skills do
    resources :searches, only: :index
  end
  resources :skills, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
  end
  resources :users, only: [:index, :show]
end