Rails.application.routes.draw do
  resources :items
  resources :favorites
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
