Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root user_controller#showAll
  get 'user/showAll'
  get 'user/new'
  post 'user/create'

end
