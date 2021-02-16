Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'

  delete 'tasks/:id', to: 'tasks#destroy', as: :delete

  # create ONE task
  get 'tasks/new', to: 'tasks#new', as: :new

  # submit the form and create the new task
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: :task

  # update ONE SPECIFIC task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

  # submit the form and update the record of the task
  patch 'tasks/:id', to: 'tasks#update'
end
