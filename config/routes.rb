Rails.application.routes.draw do
  get 'projects/index'
  get "/projects", to: "projects#index"
  patch 'todos/update'
  patch "/projects/:project_id/todos/:id", to: "todos#update"  
  post 'todos/new'
  post "/todos", to: "todos#new"
  
  root "projects#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
