Myboulderlog::Application.routes.draw do
  
  resources :comments

  resources :user_feedbacks

  controller :session do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  resources :users

  match "climbing_log/select_gym", as: 'climbing_log', :via => [:get]
  match "climbing_log/select_area", as: 'area_climbing_log', :via => [:post]
  match "climbing_log/select_route", as: 'route_climbing_log', :via => [:post]
  match "climbing_log/rate_route", as: 'rate_climbing_log', :via => [:get]
  post "climbing_log/save_custom_rating", as: 'save_custom_rating_climbing_log'
  post "climbing_log/save_comment", as: 'save_comment_climbing_log'
  
  resources :ratings

  resources :areas

  resources :gyms

  resources :routes

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
  root to: 'climbing_log#select_gym'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
