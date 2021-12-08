Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :forums, only: [:index] do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  get "affirmationmessages/:mood", to: "affirmation_messages#index"

  resources :moods do
    resources :affirmation_messages, only: [:create, :show]
  end

  resources :notifications, only: [:index, :create, :update]
end
