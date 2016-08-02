Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    get 'items', to: 'items#index'
    end
  end

  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
end
