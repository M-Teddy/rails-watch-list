Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Avoir toute la liste
  # get '/lists', to: 'lists#index'
  # # Avoir le detail de chaque liste
  # get '/lists/:id', to: 'lists#show', as: :list
  # # Creer une nouvelle liste
  # get 'lists/new', to: 'lists#new'
  # post '/lists', to: 'lists#create'

  resources :lists, only:[:index, :show, :new, :create] do
    resources :bookmarks, only:[:new, :create]
  end
  resources :bookmarks, only:[:destroy]
end
