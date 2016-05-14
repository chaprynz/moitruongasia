Rails.application.routes.draw do
  



  

  get 'pages/lienhe'

  get 'pages/video'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  resources :category do
	  resources :post, only: [:show]
	  resources :tintuc, only: [:show]
  end
  
  resources :khachhang
  
  root 'category#index'
  
  get '/tatca' => 'category#tatca'
  get '/tintuc' => 'category#tintuc'
  get '/khachhang' => 'khachhang#index'
  get '/lienhe' => 'pages#lienhe'
  get '/video' => 'pages#video'
 

end
