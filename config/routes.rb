Rails.application.routes.draw do
  root 'home#index'
  get '/shop', to: 'shop#index'
  get '/shop/checkout', to: 'shop#checkout'
  # get 'shop/checkout'
  get '/build_service', to: 'build_service#index'
  # get 'index/index'
  get '/gallery', to: 'gallery#index'
  get '/gallery/keyboards', to: 'gallery#keyboards'
  get '/gallery/cables', to: 'gallery#cables'
  # get 'gallery/keyboards'
  # get 'gallery/cables'
  get '/blog', to: 'blog#index'
  
  # default routes
  get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
