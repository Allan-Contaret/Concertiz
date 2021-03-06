Rails.application.routes.draw do

	get 'user_sessions/new'
	get 'user_sessions/create'
	get 'user_sessions/destroy'

	resources :users
	resources :home
	resources :concerts do
		resources :reservations
	end
	root 'home#index'
	root :to => 'users#index'
	resources :user_sessions
	resources :users
	get 'login' => 'user_sessions#new', :as => :login
	post 'logout' => 'user_sessions#destroy', :as => :logout

	resources :searches
end