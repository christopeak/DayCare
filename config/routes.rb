Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'class_rooms#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'class_room/:id' => 'class_rooms#show', as: 'class_room'
  get 'class_rooms' => 'class_rooms#index'

  put 'child/:id' => 'children#remove_from_class_room', as: 'remove_from_class'

  get 'children' => 'children#index', as: 'children'
  get 'child/:id/edit' => 'children#edit', as: 'edit_child'
  get 'child/new' => 'children#new', as: 'child'
  patch 'child/:id/edit_child' => 'children#update', as: 'patch_child'
  patch 'child/new' => 'children#create'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
