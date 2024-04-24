Rails.application.routes.draw do
  resources :orders, only: [:create]

  get '/pedidos_realizados', to: 'orders#list'
end
