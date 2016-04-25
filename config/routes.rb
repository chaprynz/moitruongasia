Rails.application.routes.draw do
  

  get 'tintuc/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  resources :category do
	  resources :post, only: [:show]
	  resources :tintuc, only: [:show]
  end

  root 'category#index'
  
  get '/tatca' => 'category#tatca'
  get '/tintuc' => 'category#tintuc'

end
