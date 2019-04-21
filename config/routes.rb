Rails.application.routes.draw do
  resources :tasks
  get 'home/index'
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmi
  root to: 'home#index'
end
