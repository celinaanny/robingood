Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :items, except: [:destroy] do
    resources :findings, only: [:create]
  end

  resources :findings, only: [:show]

  get "/thankyou", to: 'pages#thankyou'
  get "/registration_send_codes", to: 'codes#sendcodes'

  resources :disabled_items, only: [:update]

  resources :codes, only: [:index]
  resources :codes, only: [ :show ], param: :access_token

  resources :addresses, only: [ :create ]
  get "/sent_confirmation", to: 'addresses#sent_confirmation'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
