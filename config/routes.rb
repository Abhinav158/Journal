Rails.application.routes.draw do
  root "entries#index"

  # Whenever we perform CRUD Operations on an item along with its controller and views, it is called a Resource
  # Run `rails routes` to view the different routes available 
  resources :entries
end
