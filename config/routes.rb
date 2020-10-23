Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :books
  resources :authors
  resources :rentals

  get 'user_list' => 'books#user_list'
  get 'book_list' => 'users#book_list'

  root 'rentals#index'
end
