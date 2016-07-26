Rails.application.routes.draw do
  resources :achievements
  resources :questions
  resources :advices
  resources :people
  resources :days
  resources :arts
  resources :songs
  resources :wishes
  resources :thought_logs
  get 'home/index'
  root 'days#show'
end
