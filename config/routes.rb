Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/new'
  get 'lists/show'
  get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "lists", to: "lists#index"
  get "lists/:id", to: "lists#show"
  get "lists/new", to: "lists#new"
  post "lists", to: "lists#create"
  get "lists/:id/bookmarks/new", to: "bookmarks#new", as: :new_list_bookmark
  post "lists/:id/bookmarks", to: "bookmarks#create", as: :list_bookmarks
  delete "bookmarks/:id", to: "bookmarks#destroy", as: :bookmark
end
