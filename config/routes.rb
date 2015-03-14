Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :articles
  resources :favorites
end
