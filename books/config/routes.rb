Rails.application.routes.draw do
  root "books#index"
  resources :books
  match 'new', to: 'books#new', via: %i[get post]
  match 'index', to: 'books#index', via: %i[get post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
