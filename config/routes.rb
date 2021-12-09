Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :forums, only: [:index] do
    resources :posts
  end

  resources :posts do
    member do
      put "flag", to: "posts#flag"
    end
    collection do
      get "myposts"
    end
    resources :comments
  end

  get "affirmationmessages/:mood", to: "affirmation_messages#index"

  resources :moods do
    resources :affirmation_messages, only: [:create, :show, :index]
  end

  resources :affirmation_messages, only: [:index] do
    member do
      put "flag", to: "affirmation_messages#flag", as: "flag"
    end
  end
  resources :notifications, only: [:index, :create, :update]

  resources :usermoods, only: [:create]

  resources :comments do
    member do
      put "flag", to: "comments#flag"
    end
  end
end
