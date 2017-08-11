Rails.application.routes.draw do
	devise_for :users, controllers: {
		:registrations => 'users/registrations'
	}  

  devise_scope :user do
		unauthenticated do
			root 'users/registrations#new'
		end
		authenticated do
			root :to => 'pages#home', as: :authenticated_root
		end
	end

  resources :contacts, only: [:new, :create]
	# Static pages
  match '/error' => 'pages#error', via: [:get, :post], as: 'error_page'
  get '/about' => 'pages#about', as: 'about'
  get '/contact' => 'pages#contact', as: 'contact'
  get '/home' => 'pages#home', as: 'home'
  get '/downloads' => 'pages#downloads', as: 'downloads'
  get '/events' => 'pages#events', as: 'events'
end
