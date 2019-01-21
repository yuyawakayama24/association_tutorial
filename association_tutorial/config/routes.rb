Rails.application.routes.draw do

  root 'tweets#index'

  devise_for :users

  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end

  resources :users do

  end

  resources :users

 # root 'pages#index'

 # get 'pages/show'

 # get 'pages/index'

 # get 'pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
