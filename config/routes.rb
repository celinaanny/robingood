Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items do
    resources :findings, only: [:create]
  end

  resources :findings, only: [:show]

  get "/thankyou", to: 'pages#thankyou'

  resources :codes, only: [ :create ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
