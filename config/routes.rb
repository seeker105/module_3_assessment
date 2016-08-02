Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    get 'items', to: 'items#all'
    end
  end

  root 'items#index'

  post 'search', to: 'best_buy#index', as: :best_buy_index
  get 'stores/:store_id', to: 'best_buy#show', as: :best_buy_show
  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
end
