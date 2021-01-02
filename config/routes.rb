Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  get 'pages/help'
  get '/signed_in_home', to: 'pages#signed_in_home'
  get '/search', to: 'pages#search'
  resources :rooms do
    resources :messages
  end
  root 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
