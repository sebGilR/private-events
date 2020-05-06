Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

  get 'sign_up', to: 'users#new', as: 'sign_up'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
