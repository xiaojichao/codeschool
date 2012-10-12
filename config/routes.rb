CodeSchool::Application.routes.draw do
  devise_for :users

  namespace 'admin' do
    resources :courses do
      resources :challenges
    end
    resources :users
     root to: 'courses#index'
  end

 resources :courses, only: [:index, :show]

  resources :challenges, only: [:new] do
    resources :answers, only: [:create]
  end

  authenticated :user do
    root to: 'courses#index'
  end

  root to: 'dashboard#index'
end
