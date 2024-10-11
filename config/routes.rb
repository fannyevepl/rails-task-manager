Rails.application.routes.draw do
  # Route pour afficher le formulaire de création d'une nouvelle tâche
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # Route pour lister les tâches
  get 'tasks', to: 'tasks#index'

  # Route pour afficher les détails d'une tâche
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Route pour soumettre le formulaire et créer une nouvelle tâche
  post 'tasks', to: 'tasks#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
