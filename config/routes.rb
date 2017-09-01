Rails.application.routes.draw do
	mount Admin::Engine, :at => "admin", :as => "admin"

	#Shrine uploader endpoints
  mount FileUploader::UploadEndpoint, at: "/attachments/file"
	mount FeaturedImageUploader::UploadEndpoint, :at => "/attachments/featured_image"
	mount ImageUploader::UploadEndpoint, :at => "/attachments/image"

	resources :users, :only => [:create]
  resources :contacts, :only => [:new, :create]
	resources :galleries do
		resources :images
	end

	resources :images

	# Static pages
  match '/error' => 'pages#error', :via => [:get, :post], :as => 'error_page'
  get '/about' => 'pages#about', :as => 'about'
  get '/contact' => 'pages#contact', :as => 'contact'
  get '/home' => 'pages#home', :as => 'home'
  get '/downloads' => 'pages#downloads', :as => 'downloads'
  get '/events' => 'pages#events', :as => 'events'
	root :to => 'pages#home'
end
