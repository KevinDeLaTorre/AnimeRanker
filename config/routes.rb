Rails.application.routes.draw do

  root 'animes#index'

  devise_for   :users
  resources :animes, path: '/anime'
  resources :reviews
end
