Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get "up" => "rails/health#show", as: :rails_health_check
  
  root to: 'events#index'
  resources :attendances
  resources :events
  devise_for :users
end
