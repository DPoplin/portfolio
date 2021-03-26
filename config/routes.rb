Rails.application.routes.draw do



  root 'home#index'
  get 'build_service/form'
  # get 'index/index'
  get 'gallery/gallery'
  get 'gallery/keyboards'
  get 'gallery/cables'
  get 'blog/feed'

  # default routes
  get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
