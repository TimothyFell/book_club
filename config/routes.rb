Rails.application.routes.draw do
  root 'index#index'

  # Hand rolled routes

  # book review routes
  post   '/books/:book_id/reviews',     to: 'reviews#create', as: 'book_reviews'
  get    '/books/:book_id/reviews/new', to:'reviews#new', as: 'new_book_review'
  delete '/books/:book_id/reviews/:id', to:'reviews#new', as: 'book_review'

  # book routes
  get    '/books',      to: 'books#index',    as: 'books'
  get    '/books/new',  to: 'books#new',      as: 'new_book'
  get    '/books/:id',  to: 'books#show',     as: 'book'
  post   '/books',      to: 'books#create'
  delete '/books/:id',  to: 'books#destroy'

  # authors routes
  get    '/authors/new',  to: 'authors#new',      as: 'new_author'
  get    '/authors/:id',  to: 'authors#show',     as: 'author'
  post   '/authors',      to: 'authors#create'
  delete '/authors/:id',  to: 'authors#destroy'

  # user review routes
  delete '/users/:user_id/reviews/:id', to: 'reviews#destroy', as: 'user_review'

  # users routes
  get    '/users/new',  to: 'users#new',      as: 'new_user'
  get    '/users/:id',  to: 'users#show',     as: 'user'
  post   '/users',      to: 'users#create'

  # Resources version

  # resources :books, only:[:index,:show,:new,:create,:destroy] do
  #   resources :reviews, only: [:new, :create, :destroy]
  # end

  # resources :authors, only: [:new,:create,:show,:destroy]
  # resources :users, only: [:new,:create,:show] do
  #   resources :reviews, only: [:destroy]
  # end

end
