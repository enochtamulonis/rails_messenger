Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  get 'pages/help'
  get 'pages/signed_in_home'
  get "/search", to: "pages#search"

  root 'pages#home'
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
