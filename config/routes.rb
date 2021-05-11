Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # view all tasks
  get '/tasks', to: 'tasks#index'

  # view single task details
  get '/tasks/:id', to: 'tasks#show', as: :task
end
