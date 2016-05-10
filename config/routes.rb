Rails.application.routes.draw do

  root 'stores#index'


  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :store, path: ':store', as: :store do
    resources :items, only: [:index, :show]
  end

  get ':store', to: 'stores#show', as: :store
end
