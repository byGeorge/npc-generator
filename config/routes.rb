# welcome/index debe ser la página de destino principal para el 
# Generador de la APN. pages/login inicia sesión y pages/form es la forma
# que haga las APNs.
# welcome/index should be the main landing page for the NPC Generator.
# pages/login is the user login and pages/form is the form that makes the 
# NPCs.

Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'race/list'
  get 'login/index'
  get 'login/logout'
  get 'login/new'
  resources :login do
  	collection do
  		get 'logged'
      resources :logout
      resources :new
  	end
  end
  resources :characters do
  	collection do
  		get 'preview'
      get 'create'
      get 'view'
  	end
  end 
end

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
  # end

