Rails.application.routes.draw do
  resources :categories, except: [:index, :destroy, :show, :upate, :create, :new]
  resources :experiences, except: [:index, :show]
  resources :educations, except: [:index, :show]
  resources :posts
  
  get '/my_account', to: 'pages#my_account'
  get '/all_users', to: 'pages#all_users'
  get '/user/:id', to: 'pages#single_user', :as => :user
  get '/not_found', to: 'pages#not_found'
  get '/about', to: "pages#about"
  
  devise_for :users
  
  root to: "posts#index"
  
  get '*path' => redirect('/not_found')
end
