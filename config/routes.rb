Rails.application.routes.draw do
  devise_for :otherusers
  get 'customers/new'

  get 'users/login'

  get 'users/signup'

  get 'static_pages/home'

  get 'static_pages/about'
  
  get 'static_pages/contact'
  
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  
  get '/signup', to: 'customers#new'
 post '/signup', to: 'customers#create'

  resources :users
  root 'static_pages#home'
  resources :customers
end