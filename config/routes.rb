Rails.application.routes.draw do
  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '/artists',     to: 'artists#create',          via: 'post'
    resources :artists, only: [:index, :new, :create, :show, :destroy]

get "songs/new" => "songs#new", as: :new_song
get 'songs/:id/edit' => 'songs#edit', as: :edit_song
get 'home' => 'pages#home'
get "artist" => "pages#artist"
end
