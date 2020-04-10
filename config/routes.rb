Rails.application.routes.draw do
  resources :vendor_sweets, only: [:new, :create]
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

  resources :sweets, only: [:index, :show]
  resources :vendors, only: [:index, :show]

end
