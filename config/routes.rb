Rails.application.routes.draw do
  root 'containers#index'
  resources :item_containers
  resources :containers
  resources :items
  devise_for :users

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
end
