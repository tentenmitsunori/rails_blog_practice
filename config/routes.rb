Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  namespace :users do
    resources :articles
  end
end
