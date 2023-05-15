Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'articles#index'
  get 'article/new', to: 'articles#new'
  post 'articles', to: 'articles#create'
  get 'article/:id', to: 'articles#show', as: :article
  get 'article/:id/edit', to: 'articles#edit', as: :edit
  patch 'article/:id', to: 'articles#update'
end
