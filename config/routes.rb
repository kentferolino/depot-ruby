Rails.application.routes.draw do
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  resources :products
  post 'line_items/:id/reduce', to: "line_items#reduce_quantity", as: 'line_item_reduce'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
