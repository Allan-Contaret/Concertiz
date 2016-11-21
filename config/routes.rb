Rails.application.routes.draw do
	resources :home
	root 'home#index'
	resources :concerts
end
