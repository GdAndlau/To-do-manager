Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/tasks", to: "tasks#index"

  # add a new task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # create a task
  get "tasks/:id", to: "tasks#show", as: :task

  #update a task
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"

  #delete
  delete "tasks/:id", to: "tasks#destroy"



end
