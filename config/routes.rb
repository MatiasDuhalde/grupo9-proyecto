Rails.application.routes.draw do
  # CREATE
  get 'reviews/new', to: 'reviews#new'
  post 'reviews', to: 'reviews#create'
  # READ
  get 'reviews/index'
  get 'reviews/:id', to: 'reviews#show', as: 'review'
  # UPDATE
  get 'reviews/:id/edit', to: 'reviews#edit', as: :review_edit
  patch 'reviews/:id', to: 'reviews#update'
  # DELETE
  delete 'reviews/:id', to: 'reviews#destroy'
  # ------------------------------------------------------------------------------------------------
  # CREATE
  get 'gustos/new', to: 'gustos#new'
  post 'gustos', to: 'gustos#create'
  # READ
  get 'gustos/index', to: 'gustos#index'
  get 'gustos/:id', to: 'gustos#show', as: 'gusto'
  # UPDATE
  get 'gustos/:id/edit', to: 'gustos#edit', as: :gusto_edit
  patch 'gustos/:id', to: 'gustos#update'
  # DELETE
  delete 'gustos/:id', to: 'gustos#destroy'
  # ------------------------------------------------------------------------------------------------
  # CREATE
  get 'comunas/new', to: 'comunas#new'
  post 'comunas', to: 'comunas#create'
  # READ
  get 'comunas/index', to: 'comunas#index'
  get 'comunas/:id', to: 'comunas#show', as: 'comuna'
  # UPDATE
  get 'comunas/:id/edit', to: 'comunas#edit', as: :comuna_edit
  patch 'comunas/:id', to: 'comunas#update'
  # DELETE
  delete 'comunas/:id', to: 'comunas#destroy'

  root to: 'home#index'
  devise_for :users, path: 'users', controllers: { sessions: "locals/sessions" }
  devise_for :locals, path: 'locals', controllers: { sessions: "locals/sessions" }
  # READ
  get 'locals/index', to: 'locals#index'
  get 'locals/:id', to: 'locals#show', as: 'local'
  devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
