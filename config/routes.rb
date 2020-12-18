Rails.application.routes.draw do
  root "posts#new"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/success" => "posts#success"
  get "posts/:id" => "posts#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
