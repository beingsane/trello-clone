Rails.application.routes.draw do
  root 'home_page#index'
  get '/login', to: 'sign_in#index'
end
