Rails.application.routes.draw do
  root "tasks#index"

  match 'about', to: "tasks#about", via: :get
  match 'hello', to: "tasks#hello", via: :get

  get 'tasks/index'
  
  resources :tasks do
    member do
      get :delete
    end
  end

  # get 'tasks/index'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/show'
  # get 'tasks/delete'

  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

