Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # view all tasks
  get '/tasks', to: 'tasks#index'

  # create new task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # view single task details
  get '/tasks/:id', to: 'tasks#show', as: :task

  # edit a single task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # delete a single task
  delete '/tasks/:id', to: 'tasks#destroy'
end
