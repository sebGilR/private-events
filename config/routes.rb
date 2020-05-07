Rails.application.routes.draw do
  root 'events#index'

  resources :events, only: [:new, :create, :show, :index]
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

  get 'sign_up', to: 'users#new', as: 'sign_up'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  post 'attend_event', to: 'event_attendings#create', as: 'attend_event'
end
