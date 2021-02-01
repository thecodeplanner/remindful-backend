Rails.application.routes.draw do
  # login route

  # sign up route

  # days routes 
  get "/days" => "days#index"
  get "/days/:id" => "days#show"
  post "/days" => "days#create"
  patch "/days/:id" => "days#update"
  delete "/days/:id" => "days#destroy"

# all other routes 
  resources :selfcares
  resources :tasks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
