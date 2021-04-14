Rails.application.routes.draw do
  resources :watcheds
  resources :members
  resources :users
  
  # get '/watcheds/:id', to: "watcheds#butts"
  # post '/watcheds/:id/:cid', to: 'watcheds/make'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
