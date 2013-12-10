Travel::Application.routes.draw do
  devise_for :users
  # Routes for the Photo resource:

  root 'requests#index'

  # CREATE
  get '/photos/:id/new', controller: 'photos', action: 'new', as: 'new_photo'
  post '/photos', controller: 'photos', action: 'create', as: 'photos'

  # READ
  get '/photos', controller: 'photos', action: 'index'
  get '/photos/:id', controller: 'photos', action: 'show', as: 'photo'

  # UPDATE
  get '/photos/:id/edit', controller: 'photos', action: 'edit', as: 'edit_photo'
  patch '/photos/:id', controller: 'photos', action: 'update'

  # DELETE
  delete '/photos/:id', controller: 'photos', action: 'destroy'
  #------------------------------

  # Routes for the Reply resource:
  # CREATE
  get '/replies/new', controller: 'replies', action: 'new', as: 'new_reply'
  post '/replies', controller: 'replies', action: 'create', as: 'replies'

  # READ
  get '/replies', controller: 'replies', action: 'index'
  get '/replies/:id', controller: 'replies', action: 'show', as: 'reply'

  # UPDATE
  get '/replies/:id/edit', controller: 'replies', action: 'edit', as: 'edit_reply'
  patch '/replies/:id', controller: 'replies', action: 'update'

  # DELETE
  delete '/replies/:id', controller: 'replies', action: 'destroy'
  #------------------------------

  # Routes for the Request resource:
  # CREATE
  get '/requests/new', controller: 'requests', action: 'new', as: 'new_request'
  post '/requests', controller: 'requests', action: 'create', as: 'requests'

  # READ
  get '/requests', controller: 'requests', action: 'index'
  get '/requests/:id', controller: 'requests', action: 'show', as: 'request'

  # UPDATE
  get '/requests/:id/edit', controller: 'requests', action: 'edit', as: 'edit_request'
  patch '/requests/:id', controller: 'requests', action: 'update'

  # DELETE
  delete '/requests/:id', controller: 'requests', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
