Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  resources :organization
  get '/ong_sign_up' => 'organization#new'
  get '/ong_sign_in' => 'ong_session#new'
  post '/ong_sign_in' => 'ong_session#create'
  get '/ong_sign_out' => 'ong_session#destroy'

  resources :user
  get '/sign_up' => 'user#new'
  get '/sign_in' => 'session#new'
  post '/sign_in' => 'session#create'
  get '/sign_out' => 'session#destroy'

  resources :post
  get '/nuevo_post' => 'post#new'

  delete '/eliminar_appointment' => 'appointment#destroy', :as => :eliminar_appointment
end
