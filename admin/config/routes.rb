Admin::Engine.routes.draw do
  resources :contact_messages
  resources :users
  resources :events
  resources :settings
  resources :images
  resources :galleries
  resources :pages
  root to: "application#welcome"
end
