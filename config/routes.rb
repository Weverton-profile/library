Rails.application.routes.draw do
  get 'books_available/index'
  get 'about/index'
  get 'welcome/index'
  resources :books

  root to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
