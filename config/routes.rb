Rails.application.routes.draw do
  resources :experiences
  resources :educations
  resources :posts
  
  get '/my_account', to: 'pages#my_account'
  get '/all_users', to: 'pages#all_users'
  get '/user/:id', to: 'pages#single_user', :as => :user

  devise_for :users
  
  root to: "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
