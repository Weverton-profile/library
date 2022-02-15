Rails.application.routes.draw do
  devise_for :students
  devise_for :admins
  namespace :books_available do
    get 'index'
    get 'show_book'
  end
  get 'about/index'
  get 'welcome/index'
  resources :books

  root to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
