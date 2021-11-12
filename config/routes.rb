Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'poncetsas', to: 'pages#poncetsas'
  get 'aze', to: 'pages#aze'
  get 'lfelec', to: 'pages#lfelec'
  get 'mattard', to: 'pages#mattard'

  get 'deniaux_couverture', to: 'pages#deniaux_couverture'
  get 'rl', to: 'pages#rl'
  get 'peinture_picant', to: 'pages#peinture_picant'
  get 'profil_amenagement', to: 'pages#profil_amenagement'
  get 'benoist', to: 'pages#benoist'
  get 'logikinov', to: 'pages#logikinov'
  get 'normandie_chauffage', to: 'pages#normandie_chauffage'
  get 'samandco_tp', to: 'pages#samandco_tp'

  get 'mention', to: 'pages#mention'
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

