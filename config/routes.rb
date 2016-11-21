Rails.application.routes.draw do
	resources :home
	resources :concerts
	root 'home#index'
	resources :concerts
end
