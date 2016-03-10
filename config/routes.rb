Rails.application.routes.draw do

  root 'books#index'

  get 'login' => 'session#new', as: :login
  post 'login' => 'session#create'
  get 'logout' => 'session#delete', as: :logout

  get '/signup' => 'signup#new', as: :signup
  post '/signup' => 'signup#create', as: :users

  get 'authors' => 'authors#index', as: :authors
  get 'authors/new' => 'authors#new', as: :new_author
  post 'authors' => 'authors#create'
  get 'authors/:id' => 'authors#show', as: :author
  get 'authors/:id/edit' => 'authors#edit', as: :edit_author
  patch 'authors/:id' => 'authors#update'
  delete 'authors/:id' => 'authors#delete'

  get 'books' => 'books#index', as: :books
  get 'books/new' => 'books#new', as: :new_book
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: :book
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#delete'

  get 'license' => 'public#license', as: :license

end
