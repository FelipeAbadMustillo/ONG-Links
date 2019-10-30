Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :organization
  get '/ong_sign_up' => 'organization#new'
  get '/ong_sign_in' => 'ong_session#new'
  post '/ong_sign_in' => 'ong_session#create'
  get '/ong_sign_out' => 'ong_session#destroy'
  patch '/subscribe/:id' => 'organization#sub', :as => :subscribe
  patch '/rate/:id' => 'organization#rate', :as => :rate
  get '/analytics/:id' => 'organization#stats', :as => :stats

  resources :user
  get '/sign_up' => 'user#new'
  get '/sign_in' => 'session#new'
  post '/sign_in' => 'session#create'
  get '/sign_out' => 'session#destroy'
  get '/resetPwd' => 'passwords#new', :as => :reset
  post '/resetPwd' => 'passwords#create'
  get '/edit_user_password' => 'passwords#edit'
  put '/edit_user_password' => 'passwords#update'

  resources :post
  get '/nuevo_post' => 'post#new'
  patch '/terminar_post/:id' => 'post#release', :as => :terminar_post

  delete '/eliminar_appointment' => 'appointment#destroy', :as => :eliminar_appointment


end
