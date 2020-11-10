Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/artworks', to: 'artworks#index'
  get  'artworks/new', to: 'artworks#new', as: :new_artwork
  post '/artworks', to: 'artworks#create'
  get '/artworks/:id', to: 'artworks#show', as: :artwork


end
