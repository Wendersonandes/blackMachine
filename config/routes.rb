Rails.application.routes.draw do
	mount Admin::Engine, at: "admin", :as => "admin"
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

	#Shrine uploader endpoints
  mount FileUploader::UploadEndpoint, at: "/attachments/file"
	mount FeaturedImageUploader::UploadEndpoint, :at => "/attachments/featured_image"
	mount ImageUploader::UploadEndpoint, :at => "/attachments/image"

  resources :contacts, only: [:new, :create]
	resources :galleries do
		resources :images
	end

	resources :images

	# Static pages
  match '/error' => 'pages#error', via: [:get, :post], as: 'error_page'
  get '/about' => 'pages#about', as: 'about'
  get '/contact' => 'pages#contact', as: 'contact'
  get '/home' => 'pages#home', as: 'home'
  get '/downloads' => 'pages#downloads', as: 'downloads'
  get '/events' => 'pages#events', as: 'events'
end
