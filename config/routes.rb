Rails.application.routes.draw do
  resources :articles, only: %i[index, new, create]
  resources :search_histories, only: %i[new create]
  root "articles#new"
end
