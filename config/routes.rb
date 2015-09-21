Rails.application.routes.draw do
  resources :achievements
  resources :questions
  resources :people
    get 'home/index'
  resources :days
  root 'days#show'
end
