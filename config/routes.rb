Rails.application.routes.draw do
  namespace :admin do
      resources :companies
      resources :gemes
      resources :roles
      resources :users

      root to: "companies#index"
    end
  resources :users
  resources :gemes
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
