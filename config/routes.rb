Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'gossips#index'
  resources :users
  resources :gossips
  resources :static_pages
  resources :user_profile
  resources :cities, only: [:index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :comments
  resources :gossips do
    resources :comments
  end
end
