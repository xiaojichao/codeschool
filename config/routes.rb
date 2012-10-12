CodeSchool::Application.routes.draw do
  devise_for :users

  resources :courses, only: [:index, :show]

  authenticated :user do
    root to: 'courses#index'
  end

  root to: 'dashboard#index'
end
