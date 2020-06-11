Rails.application.routes.draw do
  resources :categories
  resources :experiences
  resources :educations
  resources :posts
  
  get '/my_account', to: 'pages#my_account'
  get '/all_users', to: 'pages#all_users'
  get '/user/:id', to: 'pages#single_user', :as => :user
  get '/not_found', to: 'pages#not_found'
  
  devise_for :users
  
  root to: "posts#index"
  
  get '*path' => redirect('/not_found')
end
