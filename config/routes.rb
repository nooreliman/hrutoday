Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :forums, only: [:index] do
    resources :posts
  end

  get 'notifications', to: 'pages#notifications'

  resources :posts do
    member do
      put "flag", to: "posts#flag"
    end
    collection do
      get "myposts"
    end
    resources :comments, only: [:new, :create]
    # get '/posts/:post_id/comments/new/(:comment_id)', to: 'comments#new', as: :new_comment
    collection do
      get 'myposts'
      get 'favorites'
    end
    member do
      get 'favorite', to: "posts#favorite"
      put 'favorite', to: "posts#favorite"
    end
    resources :comments
  end

  resources :comments, only: [:show, :update]

  get "affirmationmessages/:mood", to: "affirmation_messages#index"

  resources :moods do
    resources :affirmation_messages, only: [:create, :show, :index]
  end

  resources :affirmation_messages, only: [:index] do
    member do
      put "flag", to: "affirmation_messages#flag", as: "flag"
    end
  end

  resources :usermoods, only: [:create]

  resources :comments do
    member do
      put "flag", to: "comments#flag"
    end
  end
end
