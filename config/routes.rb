Rails.application.routes.draw do
  root 'pictures#index'

  get 'pictures' => 'pictures#index'
  get 'pictures/new' => 'pictures#new'
  get 'pictures/:id' => 'pictures#show', as: 'picture'
  get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"

  post 'pictures' => 'pictures#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  patch 'pictures/:id' => "pictures#update"

  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"


  resources :pictures

end
