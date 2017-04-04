Rails.application.routes.draw do

  get 'static_pages/home'

  get 'static_pages/about'

  root   'static_pages#home'

  get    '/signup', to: 'users#new'
  post   '/sugnup', to: 'users#create'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
end
