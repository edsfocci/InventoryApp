Rails.application.routes.draw do
  root              'static_pages#home'
  get   'help'  =>  'static_pages#help'

  # root 'containers#index'
  resources   :item_containers
  resources   :containers
  resources   :items, except: [:index, :show]
  devise_for  :users
end
