Rails.application.routes.draw do
  # Static pages
  match '/error' => 'pages#error', via: [:get, :post], as: 'error_page'
  get '/about' => 'pages#about', as: 'about'
  get '/home' => 'pages#home', as: 'home'
	root 'pages#home'
end
