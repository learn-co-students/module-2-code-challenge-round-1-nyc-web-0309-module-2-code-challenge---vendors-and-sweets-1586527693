Rails.application.routes.draw do
  resources :vendor_sweets, only: [:new, :create]
  resources :vendors, only: [:show, :index]
  resources :sweets, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"
  # get '/vendors/id', to: "vendors#show", as: "vendor"
  
end
