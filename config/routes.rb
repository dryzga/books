Books::Application.routes.draw do
  get "books/index"

  resources :books
  root :to => 'books#index'
end
