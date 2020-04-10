Rails.application.routes.draw do
  resources :vendor_sweets
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

  resources :sweets
  resources :vendors

end
