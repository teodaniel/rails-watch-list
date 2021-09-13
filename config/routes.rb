Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'movies#index'

  resources :movies, only: [:destroy, :show, :index] do
    resources :bookmarks, only: [:index, :new, :create]
  end
  resources :bookmarks, only: [:destroy]
  resources :lists, only: [:new, :create, :index, :show, :destroy]
end
