CodeSchool::Application.routes.draw do
  devise_for :users

  namespace 'admin' do
    resources :courses do
      resources :challenges
    end
    resources :users
    root to: 'courses#index'
  end

  root to: 'dashboard#index'
end
