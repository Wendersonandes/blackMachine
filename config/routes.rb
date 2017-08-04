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

	# Static pages
  match '/error' => 'pages#error', via: [:get, :post], as: 'error_page'
  get '/about' => 'pages#about', as: 'about'
  get '/home' => 'pages#home', as: 'home'
end
