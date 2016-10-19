Rails.application.routes.draw do
  root to: 'homepages#index', as: 'root'

  get 'homepages/:category/show' => 'homepages/show_category', as: 'show_category'


  # get 'homepages/new'
  #
  # get 'homepages/create'
  #
  # get 'homepages/edit'
  #
  # get 'homepages/update'
  #
  # get 'homepages/destroy'

  #============== Users ==================

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  #============== Products ==================

  get 'products/index' => 'products#index_products', as: 'index_products'

  get 'products/by_seller' => 'products#by_seller_products', as: 'by_seller_products'

  get 'products/id:/show' => 'products#show_products', as: 'show_products'

  get 'products/new'

  get 'products/create'

  get 'products/edit'

  get 'products/update'

  get 'products/destroy'

  #============== Sessions ==================

  get 'sessions/index'

  get 'sessions/show'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/edit'

  get 'sessions/update'

  get 'sessions/destroy'

  #============== Orders ==================

  get 'orders/index'

  get 'orders/show'

  get 'orders/new'

  get 'orders/create'

  get 'orders/edit'

  get 'orders/update'

  get 'orders/destroy'

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
