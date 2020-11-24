Rails.application.routes.draw do
  get 'profile/index'

  devise_for :userlogs
  resources :userreviews
  resources :evenreviews
  resources :accepteds
  resources :applications
  resources :events
  resources :users
  get 'home/frontpage'
  get 'home/about'
  root 'home#frontpage'
  #root 'events#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
