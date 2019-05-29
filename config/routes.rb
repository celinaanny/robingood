Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items, except: [:destroy] do
    resources :findings, only: [:create]
  end

  resources :findings, only: [:show, :update] do
    resources :payments, only: [:new, :create]
  end

  get "/thankyou", to: 'pages#thankyou'

  resources :disabled_items, only: [:update]

  resources :codes, only: [:index]
  resources :codes, only: [ :show ], param: :access_token
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
