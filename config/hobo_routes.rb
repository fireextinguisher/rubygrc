# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

RubyGRC::Application.routes.draw do


  # Resource routes for controller assertions
  resources :assertions


  # Resource routes for controller controls
  resources :controls


  # Resource routes for controller objectives
  resources :objectives


  # Resource routes for controller users
  resources :users, :only => [:edit, :show, :create, :update, :destroy] do
    collection do
      post 'signup', :action => 'do_signup'
      get 'signup'
    end
    member do
      get 'account'
      put 'activate', :action => 'do_activate'
      get 'activate'
      put 'reset_password', :action => 'do_reset_password'
      get 'reset_password'
    end
  end

  # User routes for controller users
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'

  namespace :admin do


    # Resource routes for controller admin/users
    resources :users

  end



# These are the Hobo 1.3 style routes.   They've been included for backwards
# compatibility reasons because the names of some named routes have been changed.
# Please update your views to use the new named route names and then disable this
# section by setting config.hobo.dont_emit_deprecated_routes = true.


 

  # DEPRECATED Resource routes for controller assertions
  get 'assertions(.:format)' => 'assertions#index', :as => 'assertions'
  get 'assertions/new(.:format)' => 'assertions#new', :as => 'new_assertion'
  get 'assertions/:id/edit(.:format)' => 'assertions#edit', :as => 'edit_assertion'
  get 'assertions/:id(.:format)' => 'assertions#show', :as => 'assertion', :constraints => { :id => %r([^/.?]+) }
  post 'assertions(.:format)' => 'assertions#create', :as => 'create_assertion'
  put 'assertions/:id(.:format)' => 'assertions#update', :as => 'update_assertion', :constraints => { :id => %r([^/.?]+) }
  delete 'assertions/:id(.:format)' => 'assertions#destroy', :as => 'destroy_assertion', :constraints => { :id => %r([^/.?]+) }


  # DEPRECATED Resource routes for controller controls
  get 'controls(.:format)' => 'controls#index', :as => 'controls'
  get 'controls/new(.:format)' => 'controls#new', :as => 'new_control'
  get 'controls/:id/edit(.:format)' => 'controls#edit', :as => 'edit_control'
  get 'controls/:id(.:format)' => 'controls#show', :as => 'control', :constraints => { :id => %r([^/.?]+) }
  post 'controls(.:format)' => 'controls#create', :as => 'create_control'
  put 'controls/:id(.:format)' => 'controls#update', :as => 'update_control', :constraints => { :id => %r([^/.?]+) }
  delete 'controls/:id(.:format)' => 'controls#destroy', :as => 'destroy_control', :constraints => { :id => %r([^/.?]+) }


  # DEPRECATED Resource routes for controller objectives
  get 'objectives(.:format)' => 'objectives#index', :as => 'objectives'
  get 'objectives/new(.:format)' => 'objectives#new', :as => 'new_objective'
  get 'objectives/:id/edit(.:format)' => 'objectives#edit', :as => 'edit_objective'
  get 'objectives/:id(.:format)' => 'objectives#show', :as => 'objective', :constraints => { :id => %r([^/.?]+) }
  post 'objectives(.:format)' => 'objectives#create', :as => 'create_objective'
  put 'objectives/:id(.:format)' => 'objectives#update', :as => 'update_objective', :constraints => { :id => %r([^/.?]+) }
  delete 'objectives/:id(.:format)' => 'objectives#destroy', :as => 'destroy_objective', :constraints => { :id => %r([^/.?]+) }


  # DEPRECATED Lifecycle routes for controller users
  post 'users/signup(.:format)' => 'users#do_signup', :as => 'do_user_signup'
  get 'users/signup(.:format)' => 'users#signup', :as => 'user_signup'
  put 'users/:id/activate(.:format)' => 'users#do_activate', :as => 'do_user_activate'
  get 'users/:id/activate(.:format)' => 'users#activate', :as => 'user_activate'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # DEPRECATED Show action routes for controller users
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # DEPRECATED Resource routes for controller users
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  namespace :admin do


    # DEPRECATED Resource routes for controller admin/users
    get 'users(.:format)' => 'users#index', :as => 'users'
    get 'users/new(.:format)' => 'users#new', :as => 'new_user'
    get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
    get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
    post 'users(.:format)' => 'users#create', :as => 'create_user'
    put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
    delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  end

end
