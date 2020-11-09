Rails.application.routes.draw do
  resources :articles do
    resources :votes, only: %i[create destroy]
    resources :comments, only: %i[create]
  end
  resources :categories, except: %i[edit update destroy]
  root 'articles#index'
  resources :users, except: %i[new]
  get '/sign_up', to: 'users#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  put 'edit_profile', to: 'sessions#update'
  get '/login', to: 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
