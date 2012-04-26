Edwardloveall::Application.routes.draw do
  get    'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :projects
  resources :categories
  resources :pages
  resources :users
  resources :sessions
  resources :media
  
  root :to => 'projects#index'
end
