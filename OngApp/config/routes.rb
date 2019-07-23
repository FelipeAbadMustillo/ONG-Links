Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user
  root 'welcome#index'
  get '/sign_in' => 'session#new'
  post '/sign_in' => 'session#create'
  get '/sign_up' => 'user#new'
  get '/sign_out' => 'session#destroy'
end
