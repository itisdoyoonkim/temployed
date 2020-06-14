Rails.application.routes.draw do
  resources :categories, except: [:index, :destroy, :show, :upate, :create, :new]
  resources :experiences, except: [:index, :destroy, :show]
  resources :educations, except: [:index, :destroy, :show]
  resources :posts
  
  get '/my_account', to: 'pages#my_account'
  get '/all_users', to: 'pages#all_users'
  get '/user/:id', to: 'pages#single_user', :as => :user
  get '/not_found', to: 'pages#not_found'
  
  devise_for :users
  
  root to: "posts#index"
  
  get '*path' => redirect('/not_found')
end
