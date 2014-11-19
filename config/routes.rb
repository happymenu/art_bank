# -*- encoding : utf-8 -*-
Rails.application.routes.draw do
  resources :system_settings

  mount Ckeditor::Engine => '/ckeditor'
  root 'landing_pictures#welcome'
  resources :user_account_records
  resources :landing_pictures do
    collection do
      get :admin_index
      get :interface_index
    end
  end

  resources :scores do
  end
  resources :comments

  resources :items do
    member do
      get :admin_show
      get :manage_comments
      get :manage_thumb_ups
    end
    collection do
      get :admin_index
    end
  end


  devise_for :users
  resources :users do
    collection do
      get :welcome
    end
  end


  resources "commons", :only => [] do
    collection do
      put :sort
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
  #   end
end
