Rails.application.routes.draw do
  resources :users
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  put 'edit_profile', to: 'sessions#update'
  get '/login', to: 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
