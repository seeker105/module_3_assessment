Rails.application.routes.draw do
  get 'best_buy/search'

  namespace :api do
  namespace :v1 do
    get 'items', to: 'items#all'
    end
  end

  root 'items#index'

  post 'search', to: 'best_buy#search', as: :best_buy_search
  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
end
