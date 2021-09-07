Rails.application.routes.draw do
  root 'post#index'
  get 'post/index'

  get '/index', to: 'post#index'
  get '/new_post', to: 'post#new'
  post '/new_post', to: 'post#create'
  get '/post/:id', to: 'post#show', as: :post_show
  get 'post/:id/edit', to: 'post#edit', as: :post_edit
  patch '/post/:id/edit', to: 'post#update'
  delete 'delete/:id', to: 'post#destroy', as: :post_delete





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
