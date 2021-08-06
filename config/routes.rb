Rails.application.routes.draw do
  get 'admin/index'
  resources :user_stocks, only:[:create, :destroy]
  devise_for :users
  root 'pages#index'
  get 'stocks_owned/index'
  get 'stocks_to_sell/index' 

  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'

  get 'deposit', to:  'investments#add'

  get 'admin', to: 'admin#index'

  post 'pending', to: 'pages#pending'

end
