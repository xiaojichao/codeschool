CodeSchool::Application.routes.draw do
  devise_for :users

  resources :courses, only: [:index, :show]

  resources :challenges, only: [:new] do
    resources :answers, only: [:create]
  end

  authenticated :user do
    root to: 'courses#index'
  end

  root to: 'dashboard#index'
end
