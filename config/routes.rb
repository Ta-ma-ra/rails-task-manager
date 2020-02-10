Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  get 'tasks/:id', to: 'tasks#show', as: 'show_task'
  patch 'tasks/:id', to: 'tasks#update', as: :task
  delete "tasks/:id", to: "tasks#destroy"
  # based on how the form is named ^
  # based on the render of the HTML of the form helper (action = /tasks/:id)
end
