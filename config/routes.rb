Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :forums, only: [:index] do
    resources :posts
  end

  resources :posts do
    resources :comments, only: [:new, :create]
    # get '/posts/:post_id/comments/new/(:comment_id)', to: 'comments#new', as: :new_comment
  end

  resources :comments, only: [:show, :update]

  get "affirmationmessages/:mood", to: "affirmation_messages#index"

  resources :moods do
    resources :affirmation_messages, only: [:create, :show]
  end

  resources :notifications, only: [:index, :create, :update]

  resources :usermoods, only: [:create]
end
