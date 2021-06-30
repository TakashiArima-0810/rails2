Rails.application.routes.draw do
  get 'reservations/index'
  get 'posts/index'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html3
  resources :rooms
  resources :users
  resources :reservations
  
end
