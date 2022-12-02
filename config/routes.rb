Rails.application.routes.draw do
  resources :articles, only: %i[index]
  root "articles#index"
end
