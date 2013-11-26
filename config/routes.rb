Juco::Application.routes.draw do
  root to: 'me#home'
  get "/home", to: "me#home"
  get "/cv", to: "me#cv"
  resources :blogs
  resources :contact, only: [:index, :create]
  devise_for :users
end
