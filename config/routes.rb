Rails.application.routes.draw do
  devise_for :users
  resources :item_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root"item_lists#index"
end
