CodeSchool::Application.routes.draw do
  devise_for :users

  namespace 'admin' do
    resources :courses
    resources :users
  end

  root to: 'dashboard#index'
end
