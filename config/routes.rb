Rails.application.routes.draw do
  devise_for :users
  root 'home_page#index'
  get '/login', to: 'sign_in#index'
end
