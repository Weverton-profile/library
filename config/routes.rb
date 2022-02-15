Rails.application.routes.draw do
  get 'show_book/show/:id', to: 'show_book#show'
  resources :loans
  devise_for :students
  devise_for :admins
  get 'books_available/index'
  get 'about/index'
  get 'welcome/index'
  resources :books
  
  root to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
