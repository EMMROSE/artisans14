Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'poncetsas', to: 'pages#poncetsas'
  get 'aze', to: 'pages#aze'
  get 'lfelec', to: 'pages#lfelec'
  get 'mattard', to: 'pages#mattard'
  get 'entreprisemarie', to: 'pages#entreprisemarie'
  get 'deniaux_couverture', to: 'pages#deniaux_couverture'
  get 'rl', to: 'pages#rl'

  get 'mention', to: 'pages#mention'
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

