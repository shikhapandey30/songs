Rails.application.routes.draw do
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
end