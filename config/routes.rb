Rails.application.routes.draw do
  resources :users
  resources :murals

  get 'recent', to: 'murals#recent'
  get 'map', to: 'murals#map'

  get 'auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'static_pages#home'
end
