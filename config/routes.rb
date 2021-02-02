Rails.application.routes.draw do
  # login route
  post "/login" => "auth#login"

  # sign up route
  post "/signup" => "auth#signup"


  # user routes
  get "/users" => "users#index"
  get "/users/:id" => "users#show"


  # days routes 
  get "/days" => "days#index"
  get "/days/:id" => "days#show"
  post "/days" => "days#create"
  patch "/days/:id" => "days#update"
  delete "/days/:id" => "days#destroy"

  # task routes
  get "/tasks" => "tasks#index"
  post "/tasks" => "tasks#create"

  # selcare routes
  get "/selfcares" => "selfcares#index"
  post "/selfcares" => "selfcares#create"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
