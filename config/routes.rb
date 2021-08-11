Rails.application.routes.draw do
  resources :user_stocks, only:[:create, :destroy]
  # resources :pages, only:[:index, :pending]
  devise_for :users
  resources :users, except: :create
  post 'create_user' => 'users#create', as: :create_user 
  
  root 'pages#index'
  get 'stocks_owned/index'
  get 'stocks_to_sell/index' 
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'deposit', to:  'investments#add'
  get 'admin', to: 'admin#index'
  
  get 'status', to: 'pages#pending' 

end
