Rails.application.routes.draw do
  resources :people
    get 'home/index'
    resources :days
    root 'days#show'
end
