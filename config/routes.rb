Rails.application.routes.draw do
  resources :job_actions
  resources :jobs
  resources :companies
  resources :contacts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
