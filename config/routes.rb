Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root'home#index'
  resources :abouts
  resources :contacts
  resources :business_services
  resources :blogs
  resources :articles 
  	
  resources :videos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
