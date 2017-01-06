Rails.application.routes.draw do
  get 'users/index'

  devise_for :users
  resources :tweets do
    member do
      get :heart
    end
  end
  resources :tweets do
    member do
      get :retweet
    end
  end
  resources :tweets do
    member do
      get :reply
    end
  end

  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
