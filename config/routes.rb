Rails.application.routes.draw do
  resources :songs
  get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#root 'home#index'
	root 'songs#index'
	get 'user/profile'
end