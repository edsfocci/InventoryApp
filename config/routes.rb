Rails.application.routes.draw do
  root 'containers#index'
  resources   :item_containers
  resources   :containers
  resources   :items, except: [:index, :show]
  devise_for  :users
end
