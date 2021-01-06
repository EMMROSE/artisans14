Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'poncetsas', to: 'pages#poncetsas'
  get 'aze', to: 'pages#aze'

  get 'mention', to: 'pages#mention'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
