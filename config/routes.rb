MVNH::Application.routes.draw do

  devise_for :admins

devise_for :users
  resource :what_is_here

  resources :comments


  resources :events

    root :to => 'mvnhome#index'
    match '/home', :to => 'mvnhome#home'
    match '/resources', :to => 'mvnhome#resources'
    match '/organisation', :to =>  'mvnhome#organisation'
    
    match '/events', :to => 'mvnhome#events'
    match '/contact_us', :to =>  'mvnhome#contact_us'

      
     root :to => 'what_is_here#index'
     match '/what_i_s_here', :to => 'what_is_here#index'

  match '/butterflies', :to => 'what_is_here#butterflies'
  match '/fungi', :to => 'what_is_here#fungi'
  match '/birds', :to => 'what_is_here#birds'
  match '/plants', :to => 'what_is_here#plants'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
