Rails.application.routes.draw do

  resources :job_actions
  resources :jobs
  resources :companies
  resources :contacts
  

  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    post '/login' => 'devise/sessions#create'
    delete '/logout' => 'devise/sessions#destroy'
    get "/signup" => "devise/registrations#new"
    get "/profile" => 'devise/registrations#edit'
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
