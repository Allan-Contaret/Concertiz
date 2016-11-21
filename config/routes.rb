Rails.application.routes.draw do
	resources :home
	resources :concerts
	root 'home#index'
end
