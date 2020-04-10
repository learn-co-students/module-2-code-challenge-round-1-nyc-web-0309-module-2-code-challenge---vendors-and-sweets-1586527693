Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sweets', to: "sweets#index", as: "sweets"
  get "/sweets/:id", to: "sweets#show", as: "sweet"

  get '/vendors', to: "vendors#index", as: "vendors"
  get "/vendors/:id", to: "vendors#show", as: "vendor"

  # get "/vendorsweets", to: "vendorSweets#index", as: "vendorsweets"
  get "/vendorsweets/new", to: "vendorsweets#new", as: "new_vendorsweets"
  post "/vendorsweets", to: "vendorsweets#create", as: "vendorsweets"
end
