Admin::Engine.routes.draw do
  resources :images
  resources :galleries
  resources :pages
  root to: "application#welcome"
end
