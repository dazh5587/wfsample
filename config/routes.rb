Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get 'help'=>'static_pages#help'
  get 'about'=>'static_pages#about'
  get 'signup'=>'users#new'
  get 'login'=>'sessions#new'
  post 'login'=>'sessions#create'
  get 'logout'=>'sessions#destroy'
  resources :users
  resources :shifts, only: [:create, :destroy]
end
