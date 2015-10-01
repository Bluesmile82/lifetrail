Rails.application.routes.draw do
  resources :achievements
  resources :questions
  resources :advice
  resources :people
  resources :days
  get 'home/index'
  root 'days#show'
end
