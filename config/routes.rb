Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :favorites,:only => [:create,:index,:destroy]
  namespace :users do
    resources :articles
  end
end
