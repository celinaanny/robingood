Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :items do
    resources :findings, only: [:create]
  end

  resources :findings, only: [:show]

  get "/thankyou", to: 'pages#thankyou'
  get "/user/codes", to: 'codes#sendcodes'

  resources :codes, only: [:index]
  resources :codes, only: [ :show ], param: :access_token
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
