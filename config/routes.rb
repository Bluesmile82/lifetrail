Rails.application.routes.draw do
  resources :achievements
  resources :questions
  resources :advice
  resources :people
  resources :days
  resources :arts
  resources :songs
  get 'home/index'
  root 'days#show'
end
