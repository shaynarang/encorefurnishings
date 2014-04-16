Encorefurnishings::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#home'
  resources :pages, :only => [:home, :about, :services, :contact]
  get '/home', to:'pages#home'
  get '/about', to:'pages#about'
  get '/services', to: 'pages#services'
  get '/contact', to: 'messages#new'
  resources :products, :only => [:index, :show]
  resources :messages, :only => [:new, :create]

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect { |p, req| req.flash[:alert] = "Could not authenticate you from Facebook. Please try again."; '/' }, via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
