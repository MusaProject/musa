Musa::Application.routes.draw do
  root "home#index"

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]


  devise_for :admins, :controllers => { :sessions => "admin/sessions" }
  namespace :admin do
    match "dashboard", to: "dashboard#index", via: [:get, :post]
    resources :songs do
      resources :song_exercises
    end
    resources :exercises
  end

  resources :songs
end
