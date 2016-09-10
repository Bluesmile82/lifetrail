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
  post 'thought_logs/:id/add_time' => 'thought_logs#add_time'
  get 'home/index'
  root 'days#show'
end
