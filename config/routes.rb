Rails.application.routes.draw do
  devise_for :users
  
  
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
  }
end
