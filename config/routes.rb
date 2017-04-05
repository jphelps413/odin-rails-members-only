Rails.application.routes.draw do

  root 'posts#index'

  get  'static_pages/home'

  get    '/about',  to: 'static_pages#about'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :posts, only: [:new, :create, :index]
end
