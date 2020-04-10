Rails.application.routes.draw do
  resources :sweets, only: [:index, :show ]
  resources :vendors, only: [:index, :show ]
  resources :vendorsweets, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
