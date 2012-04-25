Edwardloveall::Application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :projects
  resources :categories
  resources :pages
  resources :users
  resources :sessions
  
  root :to => 'projects#index'
end
