Rails.application.routes.draw do
  resources :campaigns
  resources :payments
  resources :songs
  get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#root 'home#index'
	root 'songs#index'
	get 'users/profile'
	resource :users, only: [:edit] do
  collection do
    patch 'update_password'
  end
	
	end
	 get 'users/change' => "users#change"
	 post 'user/change'
   match '/auth/:provider/callback', :to => 'sessions#create', via: [:get, :post]
   match '/auth/failure', :to => 'sessions#failure', via: [:get, :post]
   #get 'payments/index'=> "payments#index"
end