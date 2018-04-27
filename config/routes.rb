Rails.application.routes.draw do
  devise_for :users
  resources :users
  post '/users/cuisine', to: 'users#index'
  post '/users/filter', to: 'users#index'
  resources :skillsets, only: [:new, :create]
  resources :images, only: [:create]

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
