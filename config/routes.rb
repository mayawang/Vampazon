Rails.application.routes.draw do
##### homepages routes #####
# why were these generated with index?
  root to: 'homepages#index'
  get 'homepages/index', as: 'index'


  get 'homepages/show'

  get 'homepages/new'

  get 'homepages/create'

  get 'homepages/edit'

  get 'homepages/update'

  get 'homepages/destroy'

##### user routes #####

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  ##### products routes #####

  get 'products/index'

  get 'products/show'

  get 'products/new'

  get 'products/create'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

##### sessions routes #####

  get 'sessions/index'

  get 'sessions/show'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/edit'

  get 'sessions/update'

  get 'sessions/destroy'

##### orders routes #####
# we chose to make the convention of having the as: be action + plural. 
  get 'orders/index' => 'orders#index', as: :index_orders

  get 'orders/show/:id' => 'orders#show', as: :show_orders

  post 'orders/new' => 'orders#new', as: :new_orders

  get 'orders/create' => 'orders#create', as: :create_orders

  get 'orders/:id/edit' => 'orders#edit', as: :edit_orders

  patch 'orders/:id/update' => 'orders#update', as: :update_orders

  delete 'orders/:id/destroy' => 'orders#destroy', as: :destroy_orders

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
