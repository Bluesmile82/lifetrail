Rails.application.routes.draw do
    get 'home/index'
    resources :days
    root 'days#show'
end
