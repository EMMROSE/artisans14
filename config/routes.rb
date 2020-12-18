Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'poncetsas', to: 'pages#poncetsas'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
