Rails.application.routes.draw do
  get '/' => 'questions#index'
  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  resources :users do
    resources :questions
  end

  resources :questions do
      resources :responses
  end

  resources :responses do
    resources :votes do
      get 'upvote', on: :new
      get 'downvote', on: :new
    end
  end

end
