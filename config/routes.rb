Rails.application.routes.draw do
  resources :vendor_sweets, only: [:new, :create]
  resources :sweets, only: [:index, :show]
  resources :vendors, only: [:index, :show]
end
