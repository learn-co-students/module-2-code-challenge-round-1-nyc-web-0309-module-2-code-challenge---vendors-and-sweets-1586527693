Rails.application.routes.draw do
  resources :vendor_sweets, only: [:new, :create]
  resources :sweets, only: [:index, :show]
  resources :vendors, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
