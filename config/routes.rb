Rails.application.routes.draw do

  root 'animes#index'

  devise_for   :users
  resources :animes
  resources :reviews
end
