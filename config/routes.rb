Rails.application.routes.draw do
  get 'pages/home'
root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :artists

get "songs/new" => "songs#new", as: :new_song
  get 'songs/:id/edit' => 'songs#edit', as: :edit_song
end
